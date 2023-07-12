require "test_helper"

class TwiitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twiits_index_url
    assert_response :success
  end
end
