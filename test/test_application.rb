require_relative "test_helper"

class TestApp < Friday::Application
end

class FridayAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/"
    
    assert last_response.ok?
    body = last_response.body
    assert body["Hello from Friday, what can I do for you!"]
  end
end

