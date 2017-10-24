
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fluffyjs/version"

Gem::Specification.new do |spec|
  spec.name          = "fluffyjs"
  spec.version       = Fluffyjs::VERSION
  spec.authors       = ["Bastien"]
  spec.email         = ["bastienrbt@protonmail.com"]

  spec.summary       = "Fluffy on Rails"
  spec.description   = "Use Fluffy.js on Ruby on Rails"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
