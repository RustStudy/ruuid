# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruuid/version'

Gem::Specification.new do |spec|
  spec.name          = "ruuid"
  spec.version       = Ruuid::VERSION
  spec.authors       = ["blackanger"]
  spec.email         = ["blackanger.z@gmail.com"]
  spec.summary       = 'rust uuid generate'
  spec.description   = 'rust uuid generate.'
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = [
    "Cargo.lock", "Cargo.toml", "Gemfile",
    "MIT-LICENSE.txt", "README.md", "Rakefile", "bin/console", "bin/setup",
    "ext/ruuid/extconf.rb", "ruuid.gemspec"
  ]
  spec.files += Dir['lib/**/*']
  spec.files += Dir['src/**/*']

  spec.extensions    << "ext/ruuid/extconf.rb"
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 1.12"
  spec.add_dependency "rake", "~> 12.0"
  spec.add_dependency "ffi", "~> 1.9"
  spec.add_development_dependency "method_source", "~> 0.8.2"
  spec.add_development_dependency "minitest", "~> 5.10"
  spec.add_development_dependency "minitest-reporters", "~> 1.1"
end
