# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "dm-rest-adapter"
  s.version = "1.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Scott Burton @ Joyent Inc"]
  s.date = "2012-12-04"
  s.description = "REST Adapter for DataMapper"
  s.email = "scott.burton [a] joyent [d] com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "Gemfile",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "dm-rest-adapter.gemspec",
    "lib/dm-rest-adapter.rb",
    "lib/dm-rest-adapter/adapter.rb",
    "lib/dm-rest-adapter/exceptions.rb",
    "lib/dm-rest-adapter/authentication/omniauth_ver1.rb",
    "lib/dm-rest-adapter/helper/query_param.rb",
    "lib/dm-rest-adapter/format.rb",
    "lib/dm-rest-adapter/format/json.rb",
    "lib/dm-rest-adapter/format/xml.rb",
    "lib/dm-rest-adapter/spec/setup.rb",
    "spec/fixtures/book.rb",
    "spec/fixtures/book_cover.rb",
    "spec/fixtures/chapter.rb",
    "spec/fixtures/difficult_book.rb",
    "spec/fixtures/publisher.rb",
    "spec/fixtures/vendor.rb",
    "spec/rcov.opts",
    "spec/semipublic/format/json_spec.rb",
    "spec/semipublic/format/xml_spec.rb",
    "spec/semipublic/rest_adapter_spec.rb",
    "spec/semipublic/shared/format.rb",
    "spec/spec.opts",
    "spec/spec_helper.rb",
    "tasks/spec.rake",
    "tasks/yard.rake",
    "tasks/yardstick.rake"
  ]
  s.homepage = "http://github.com/datamapper/dm-rest-adapter"
  s.require_paths = ["lib"]
  s.rubyforge_project = "datamapper"
  s.rubygems_version = "1.8.24"
  s.summary = "REST Adapter for DataMapper"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<dm-serializer>, ["~> 1.2.0"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.8"])
      s.add_runtime_dependency(%q<json>, ["~> 1.8"])
      s.add_runtime_dependency(%q<json_pure>, ["~> 1.8"])
      s.add_development_dependency(%q<dm-validations>, ["~> 1.2.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.2"])        
    else
      s.add_dependency(%q<dm-serializer>, ["~> 1.2.0"])
      s.add_dependency(%q<multi_json>, ["~> 1.8"])
      s.add_dependency(%q<json>, ["~> 1.8"])
      s.add_dependency(%q<json_pure>, ["~> 1.8"])
      s.add_dependency(%q<dm-validations>, ["~> 1.2.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_dependency(%q<rspec>, ["~> 1.3.2"])
    end
  else
    s.add_dependency(%q<dm-serializer>, ["~> 1.2.0"])
    s.add_dependency(%q<multi_json>, ["~> 1.8"])
    s.add_dependency(%q<json>, ["~> 1.8"])
    s.add_dependency(%q<json_pure>, ["~> 1.8"])
    s.add_dependency(%q<dm-validations>, ["~> 1.2.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<rake>, ["~> 0.9.2"])
    s.add_dependency(%q<rspec>, ["~> 1.3.2"])
  end
end

