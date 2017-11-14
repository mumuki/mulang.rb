# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mulang/version"

Gem::Specification.new do |spec|
  spec.name          = "mulang"
  spec.version       = Mulang::VERSION
  spec.authors       = ["Franco Bulgarelli"]
  spec.email         = ["franco@mumuki.org"]

  spec.summary       = %q{Gem wrapper for mulang tool}
  spec.description   = %q{Gem wrapper for mulang tool}
  spec.homepage      = "https://github.com/mumuki/mulang"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = Dir['lib/**/*', 'bin/**/*']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib', 'bin']

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "activesupport", "~> 5.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
