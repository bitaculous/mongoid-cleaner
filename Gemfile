#!/usr/bin/env bundle

source 'https://rubygems.org'

# Declare the gem's dependencies in `mongoid-cleaner.gemspec`. Bundler will treat runtime dependencies like base
# dependencies, and development dependencies will be added by default to the `:development` group.
gemspec

group :development do
  gem 'guard-rspec', '~> 4.6.4', require: false
end

group :test do
  # --- Code Analysis ---

  gem 'rubocop',       '~> 0.34.2', require: false
  gem 'rubocop-rspec', '~> 1.3.1',  require: false

  # --- Code Coverage ---

  gem 'simplecov', '~> 0.10.0', require: false

  gem 'codeclimate-test-reporter', '~> 0.4.8', require: false

  # --- Ooops! ---

  gem 'pry-byebug', '~> 3.2.0', require: false
end

group :misc do
  # --- Formatter ---

  gem 'nyan-cat-formatter', '~> 0.11', require: false

  # --- OS X ---

  gem 'growl', '~> 1.0.3', require: RUBY_PLATFORM.include?('darwin') && 'growl'

  gem 'rb-fsevent', '~> 0.9.6', require: RUBY_PLATFORM.include?('darwin') && 'rb-fsevent'
end