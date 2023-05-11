require "test_helper"

class SessionPageControllerTest < ActionDispatch::IntegrationTest
  test "should get session" do
    get session_page_session_url
    assert_response :success
  end
end
