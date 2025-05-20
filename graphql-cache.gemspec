# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'graphql/cache/version'

Gem::Specification.new do |s|
  s.name          = 'graphql-cache'
  s.version       = GraphQL::Cache::VERSION
  s.authors       = ['Michael Kelly']
  s.email         = ['michaelkelly322@gmail.com']

  s.summary       = 'A caching plugin for graphql-ruby'
  s.description   = 'A caching plugin for graphql-ruby https://stackshare.io/posts/introducing-graphql-cache'
  s.homepage      = 'https://github.com/stackshareio/graphql-cache'
  s.license       = 'MIT'

  s.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 2.2.0' # bc graphql-ruby requires >= 2.2.0

  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'codeclimate-test-reporter'
  s.add_development_dependency 'mini_cache'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rake',    '~> 13.0'
  s.add_development_dependency 'rspec',   '~> 3.0'
  s.add_development_dependency 'sequel'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'

  s.add_dependency "graphql", ">= 1.8", "< 3.0"
end
