# encoding: utf-8
require File.expand_path('../lib/engineered/version', __FILE__)

Gem::Specification.new do |s|
  s.name    = 'sprockets-rails3'
  s.version = Engineered::VERSION

  s.summary     = 'Sprockets engine for Rails 3, add it to your Gemfile and go!'
  s.description = 'Micro-engine wraps up rack-sprockets in order to avoid much configuration.' 
  s.authors     = ['Priit Tamboom']
  s.email       = 'priit@gitnation.com'
  s.homepage    = 'http://github.com/priit/sprockets-rails3'

  s.required_rubygems_version = '>= 1.3.7'
  s.files = Dir['lib/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
  s.rubyforge_project = 'sprockets-rails3'

  s.add_runtime_dependency('rails', ['>= 3.0.0'])
  s.add_runtime_dependency('rack-sprockets', ['>= 1.0.3'])
end
