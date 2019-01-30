require 'test_helper'

class ComControllerTest < ActionDispatch::IntegrationTest
  test "should get comments" do
    get com_comments_url
    assert_response :success
  end

end
