require "test_helper"

class DetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get find" do
    get details_find_url
    assert_response :success
  end
end
