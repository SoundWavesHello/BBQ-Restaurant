require 'test_helper'

class OrderControllerTest < ActionDispatch::IntegrationTest
  test "should get confirmation" do
    get order_confirmation_url
    assert_response :success
  end

end
