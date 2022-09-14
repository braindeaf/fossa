# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fossa/version'

Gem::Specification.new do |spec|
  spec.name          = "fossa"
  spec.version       = Fossa::VERSION
  spec.authors       = ["Rob Lacey (braindeaf)"]
  spec.email         = ["contact@robl.me"]

  spec.summary       = %q{Rails Middleware that collects stats for incoming requests}
  spec.description   = %q{Rails Middleware that collects stats for incoming requests}
  spec.homepage      = "http://robl.me/gems/fossa"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 4.0.0", "< 5.3"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
