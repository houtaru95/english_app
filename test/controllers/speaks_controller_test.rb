require 'test_helper'

class SpeaksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get speaks_index_url
    assert_response :success
  end

end
