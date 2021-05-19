source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# Specify your gem's dependencies in lms_interactor.gemspec
gemspec

gem 'faraday', '~> 0.15.2'
gem 'faraday_middleware', '~> 0.12.2'
gem 'nokogiri', '~> 1.11'
gem 'queryparams', '~> 0.0.3'

group :test do
  gem 'coveralls', '>= 0.7.1', require: false
  gem 'factory_bot', '>= 4.11.0'
  gem 'faker', '>= 1.8'
  gem 'rspec', '>= 3.8'
  gem 'simplecov', '>= 0.15.1', require: false
  gem 'timecop', '~> 0.9.1'
  gem 'webmock', '>= 3.4'
end
