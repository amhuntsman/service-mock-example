require 'json'
require 'sinatra/base'

module CaseService
  class MockApp < Sinatra::Base
    
    # All responses will be in JSON format
    before do
      headers "Content-type" => "application/json"
    end
    
    get '/' do
      JSON.dump message: 'hello'
    end
    
    get '/cases' do
      JSON.dump Spec::CASE_LIST
    end
    
    # ...additional service endpoints...
    # post '/cases'
    # put '/cases/:id'
    # delete '/cases/:id'
    # ...and other resources as defined by the specification/tests
  end
end