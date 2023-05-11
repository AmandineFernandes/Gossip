require "test_helper"

class UserPageControllerTest < ActionDispatch::IntegrationTest
  test "should get user" do
    get user_page_user_url
    assert_response :success
  end
end
