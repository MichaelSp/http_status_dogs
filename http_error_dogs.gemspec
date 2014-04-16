# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'http_error_dogs/version'

Gem::Specification.new do |spec|
  spec.name          = "http_error_dogs"
  spec.version       = HttpErrorDogs::VERSION
  spec.authors       = ["Michael Sprauer"]
  spec.email         = ["Sprauer@Inline.de"]
  spec.summary       = %q{Replace your HTTP error codes with dogs}
  spec.description   = %q{As seen here http://httpstatusdogs.com/}
  spec.homepage      = "https://github.com/MichaelSp/http_status_dogs"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_dependency   'rails', '~> 4'
end
