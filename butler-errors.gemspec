# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'butler/errors/version'

Gem::Specification.new do |spec|
  spec.name          = "butler-errors"
  spec.version       = Butler::Errors::VERSION
  spec.authors       = ["Stefan Botzenhart"]
  spec.email         = ["sb@ninjaconcept.com"]

  spec.summary       = %q{Serve dynamic error pages in a rails app}
  spec.homepage      = "https://github.com/ninjaconcept/butler-errors"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", 'app']

  spec.add_dependency "rails", "~> 4.2.0"
  spec.add_dependency "haml-rails", "~> 0.9.0"
  spec.add_dependency "sass-rails", "~> 5.0.1"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rspec-rails", "~> 3.2.1"
end
