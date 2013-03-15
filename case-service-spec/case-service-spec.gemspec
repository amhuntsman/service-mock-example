# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'case_service/spec/version'

Gem::Specification.new do |spec|
  spec.name          = "case-service-spec"
  spec.version       = CaseService::Spec::VERSION
  spec.authors       = ["Aaron Huntsman"]
  spec.email         = ["aaron.huntsman@gmail.com"]
  spec.description   = %q{Spec/test suite for example case service.}
  spec.summary       = %q{Use this to guide implementation of mock service features.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency 'minitest'
  spec.add_runtime_dependency 'rack-test'
end
