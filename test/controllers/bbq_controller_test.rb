require 'test_helper'

class BbqControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bbq_index_url
    assert_response :success
  end

end
