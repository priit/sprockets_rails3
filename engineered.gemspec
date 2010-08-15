# encoding: utf-8
require File.expand_path('../lib/engineered/version', __FILE__)

Gem::Specification.new do |s|
  s.name    = 'engineered'
  s.version = Engineered::VERSION

  s.summary     = 'Lightweight layer to gemify your engines (Rails 3)'
  s.description = 'Engine will be "engineered" when you can include its gem ' + 
                  'into your application Gemfile without much extra effort, ' +
                  'maintenance or conflicts.'
  s.authors     = ['Priit Tamboom']
  s.email       = 'priit@mx.ee'
  s.homepage    = 'http://github.com/priit/engineered'

  s.required_rubygems_version = '>= 1.3.7'
  s.files = Dir['lib/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
  s.rubyforge_project = 'engineered'

  s.add_runtime_dependency('rails', ['>= 3.0.0.rc'])
  s.add_runtime_dependency('haml', ['>= 3.0.16'])
  s.add_runtime_dependency('rack-sprockets', ['>= 1.0.3'])
end
