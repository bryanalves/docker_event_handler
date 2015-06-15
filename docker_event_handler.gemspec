lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'docker_event_handler/version'

Gem::Specification.new do |spec|
  spec.name          = "docker_event_handler"
  spec.version       = DockerEventHandler::VERSION
  spec.authors       = ["Bryan Alves"]
  spec.email         = ["bryanalves@gmail.com"]
  spec.summary       = "Tools for using docker event stream for service discovery"
  spec.description   = "Tools for using docker event stream for service discovery"
  spec.homepage      = "https://www.github.com/bryanalves/docker_event_handler"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*", "Rakefile", "README.md"]
  spec.test_files    = Dir["test/**/*"]
  spec.executables   = ['main']

  spec.require_paths = ["lib"]

  spec.add_dependency 'docker-api'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
