require "test_helper"

class SearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get analytics" do
    get searches_analytics_url
    assert_response :success
  end
end
