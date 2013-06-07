require 'multi_json'
require 'jsonpath'

module DataMapperRest
  module Format
    class Json < AbstractFormat
      def default_options
        DataMapper::Mash.new({ :mime => "application/json", :extension => "json" })
      end
      
      def string_representation(resource)
        model = resource.model
        
        hash = properties_to_serialize(resource).reduce({}) do |h, property|
          key = property.field.to_sym
          dumped_value = ''
          value = property.get(resource)
          
          if(hash_or_array? value)
            dumped_value = MultiJson.dump(value)
            dumped_value = MultiJson.decode(dumped_value) #Dump also encodes is why, and we don't want to double encode.
          else
            dumped_value = property.dump(value)
          end
          
          h.merge(key => dumped_value)
        end
        
        MultiJson.encode(hash)
      end
      
      def parse_record(json, model)
        hash = {}
        
        if @record_selector
          hash = JsonPath.on(json, record_selector_expression(model)).first
        else
          hash = JSON.parse(json)
        end
        
        field_to_property = Hash[ properties(model).map { |p| [ p.field, p ] } ]
        record_from_hash(hash, field_to_property)
      end
      
      def parse_collection(json, model)
        array = []
        
        if @collection_selector
          array = JsonPath.on(json, collection_selector_expression(model)).first
          raise "Collection selector resulted in an error." if array.nil?
        else
          parsed_collection = JSON.parse(json)
          array = parsed_collection.kind_of?(Array) ? parsed_collection : [parsed_collection]
        end
        
        field_to_property = Hash[ properties(model).map { |p| [ p.field, p ] } ]
        array.collect do |hash|
          record_from_hash(hash, field_to_property)
        end
      end
      
      private
      
      def record_from_hash(hash, field_to_property)
        record = {}
        hash.each_pair do |field, value|
          next unless property = field_to_property[field]
          record[field] = property.typecast(value)
        end
        
        record
      end
      
      def record_selector_expression(model)
        "$.#{transform_selector_expression(@record_selector)}"
      end
      
      def collection_selector_expression(model)
        "$.#{transform_selector_expression(@collection_selector)}"
      end
      
      def transform_selector_expression(expression)
        expression.gsub(/(\w+(-\w+)+)/) do |match| 
          "['#{match}']"
        end
      end
      
      def hash_or_array?(value)
        value.kind_of?(::Hash) || value.kind_of?(::Array)
      end
    end
  end
end
