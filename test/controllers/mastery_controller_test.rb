require 'test_helper'

class MasteryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mastery_index_url
    assert_response :success
  end

  test "should get show" do
    get mastery_show_url
    assert_response :success
  end

end
