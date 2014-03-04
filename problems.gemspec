# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'problems/version'

Gem::Specification.new do |spec|
  spec.name          = "problems"
  spec.version       = Problems::VERSION
  spec.authors       = ["Alexey Artamonov"]
  spec.email         = ["i@useruby.com"]
  spec.summary       = %q{Solver for problems}
  spec.description   = %Q{#{spec.summary}}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
