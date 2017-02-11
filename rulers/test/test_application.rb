require_relative "test_helper"

class TestApp < Rulers::Application
end

class RulersAppTest < Test::unit::TestCase
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_require
    get "/"

    assert last_response.ok?
    body = last_response.body
    assert body["Hello"]
  end
end
