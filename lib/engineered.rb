require 'active_support/core_ext/module'

module Engineered
  mattr_accessor :engines
  @@engines = []
end

require 'engineered/version'
require 'engineered/sass'
require 'engineered/sprockets'
require 'engineered/railtie' if defined?(Rails)
