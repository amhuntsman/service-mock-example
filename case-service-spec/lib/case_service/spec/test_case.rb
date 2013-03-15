require 'minitest/unit'
require 'rack/test'

module CaseService
  module Spec
    class TestCase < MiniTest::Unit::TestCase
      include Rack::Test::Methods
    end
  end
end