# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'marvel_api/version'

Gem::Specification.new do |spec|
  spec.name          = "marvel_api"
  spec.version       = MarvelApi::VERSION
  spec.authors       = ["Pat George"]
  spec.email         = ["pat.george@hungrymachine.com"]
  spec.description   = %q{A Ruby gem wrapper for the Marvel API}
  spec.summary       = %q{A Ruby gem wrapper for the Marvel API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
