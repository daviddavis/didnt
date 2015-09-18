# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'didnt/version'

Gem::Specification.new do |spec|
  spec.name          = "didnt"
  spec.version       = Didnt::VERSION
  spec.authors       = ["David Davis"]
  spec.email         = ["david@memorious.net"]

  spec.summary       = %q{Didnt, a testing framework for the lazy and disillusioned.}
  spec.homepage      = "http://github.com/daviddavis/didnt"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
