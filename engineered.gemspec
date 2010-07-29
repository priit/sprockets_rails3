# encoding: utf-8

Gem::Specification.new do |s|
  s.name    = 'engineered'
  s.version = '0.0.1'

  s.summary     = 'Stack up your Rails 3 engines'
  s.description = 'Provides a small layer to build Rails 3 engines such a way, where you can easily bundle them up to your master app.'
  s.authors     = ['Priit Tamboom']
  s.email       = 'priit@mx.ee'
  s.homepage    = 'http://github.com/priit/engineered'

  s.required_rubygems_version = '>= 1.3.7'
  s.files = Dir['lib/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
  s.rubyforge_project = 'engineered'

  s.add_runtime_dependency('haml', ['~> 3.0.14'])
  s.add_runtime_dependency('rack-sprockets', ['~> 1.0.3'])
end
