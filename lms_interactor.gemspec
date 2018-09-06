
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lms_interactor/version'

Gem::Specification.new do |spec|
  spec.name          = 'lms_interactor'
  spec.version       = LmsInteractor::VERSION
  spec.authors       = ['Ahmad Hassan']
  spec.email         = ['er.ahmad.hassan@gmail.com']

  spec.summary       = %q{Interact with LMSes Like Canvas, Blackboard, Sakai, D2L, Moodle, etc}
  spec.description   = %q{This Gem allows you to easily interact with LMSes Like Canvas, Blackboard, Sakai, D2L, Moodle, etc }
  spec.homepage      = 'https://github.com/ahmadhasankhan/lms_interactor'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'

  spec.add_dependency 'faraday', '~> 0.15.2'
  spec.add_dependency 'faraday_middleware', '~> 0.12.2'
  spec.add_dependency 'nokogiri', '~> 1.8'
  spec.add_dependency 'queryparams', '~> 0.0.3'
end
