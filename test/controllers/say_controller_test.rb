require 'test_helper'

class SayControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get say_hello_url
    assert_response :success
  end

  test "should say hello rails in json" do
    get say_hello_url
    assert_equal "{\"message\":\"Hello, Rails!\"}", @response.body
  end

  test "should say hello john in json" do
    get say_hello_url, params: { user: 'John' }
    assert_equal "{\"message\":\"Hello, John!\"}", @response.body
  end
end
