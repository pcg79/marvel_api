# require 'rubygems'
# require 'simplecov'
# require 'test/unit'
# require 'mocha/setup'

# SimpleCov.start do
#   add_filter '/test/'
# end

# $LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
# $LOAD_PATH.unshift(File.dirname(__FILE__))
# Mocha::Configuration.prevent(:stubbing_non_existent_method)

# require 'minitest/spec'
require 'minitest/autorun'

require 'marvel_api'
