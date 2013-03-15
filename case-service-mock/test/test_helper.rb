# test_helper.rb
ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require File.expand_path(File.dirname(__FILE__) + '/../app')

require 'case_service/spec'

class CaseService::Spec::TestCase
  def app
    CaseService::MockApp
  end
end

# ...additional service-specific setup...