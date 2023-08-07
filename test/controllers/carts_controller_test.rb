require "test_helper"

class CartsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get carts_top_url
    assert_response :success
  end
end
