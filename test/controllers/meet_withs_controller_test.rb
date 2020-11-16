require 'test_helper'

class MeetWithsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meet_withs_index_url
    assert_response :success
  end

end
