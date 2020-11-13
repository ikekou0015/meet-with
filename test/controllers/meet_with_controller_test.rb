require 'test_helper'

class MeetWithControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meet_with_index_url
    assert_response :success
  end

end
