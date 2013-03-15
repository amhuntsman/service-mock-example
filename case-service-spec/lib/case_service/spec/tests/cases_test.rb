# cases_test.rb
require 'json'

class CasesTest < CaseService::Spec::TestCase
  def test_root_says_hello
    get '/'
    assert_equal 'hello', (JSON.parse(last_response.body))['message']
  end
  
  def test_case_list
    get '/cases'
    cases = JSON.parse(last_response.body)
    assert_equal cases, CaseService::Spec::CASE_LIST
  end
  
  # ...other tests as required by the specification...
end