#!/usr/bin/env gem build

require File.expand_path '../lib/mongoid/cleaner/version', __FILE__

Gem::Specification.new 'mongoid-cleaner', Mongoid::Cleaner::VERSION do |spec|
  spec.summary          = 'Cleaner for Mongoid with drop and truncation strategy.'
  spec.author           = 'Maik Kempe'
  spec.email            = 'mkempe@bitaculous.com'
  spec.homepage         = 'https://bitaculous.github.io/mongoid-cleaner/'
  spec.license          = 'MIT'
  spec.files            = Dir['{lib}/**/*', 'LICENSE', 'README.md']
  spec.extra_rdoc_files = ['LICENSE', 'README.md']

  spec.required_ruby_version     = '~> 2.1'
  spec.required_rubygems_version = '~> 2.4'

  spec.add_runtime_dependency 'mongoid', '~> 5.0.0'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake',    '~> 10.4.2'
  spec.add_development_dependency 'rspec',   '~> 3.3.0'
end