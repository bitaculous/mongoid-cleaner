#!/usr/bin/env bundle

source 'https://rubygems.org'

# Declare the gem's dependencies in `mongoid-cleaner.gemspec`. Bundler will treat runtime dependencies like base
# dependencies, and development dependencies will be added by default to the `:development` group.
gemspec

# === Development ===

group :development do
  gem 'guard-rspec', '~> 4.6.4', require: false
end

# === Test ===

group :test do
  # --- Code Analysis ---

  gem 'rubocop',       '~> 0.37.2', require: false
  gem 'rubocop-rspec', '~> 1.4.0',  require: false

  # --- Code Coverage ---

  gem 'simplecov', '~> 0.11.2', require: false

  gem 'codeclimate-test-reporter', '~> 0.5.0', require: false

  # --- Ooops! ---

  gem 'pry-byebug', '~> 3.3.0', require: false
end

# === Misc ===

group :misc do
  # --- Formatter ---

  gem 'nyan-cat-formatter', '~> 0.11', require: false

  # --- OS X ---

  gem 'growl', '~> 1.0.3', require: RUBY_PLATFORM.include?('darwin') && 'growl'

  gem 'rb-fsevent', '~> 0.9.7', require: RUBY_PLATFORM.include?('darwin') && 'rb-fsevent'
end