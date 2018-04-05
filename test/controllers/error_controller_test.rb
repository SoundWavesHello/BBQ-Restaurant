require 'test_helper'

class ErrorControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get error_page_url
    assert_response :success
  end

end
