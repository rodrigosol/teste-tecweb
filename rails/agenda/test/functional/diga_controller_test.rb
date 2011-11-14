require 'test_helper'

class DigaControllerTest < ActionController::TestCase
  test "should get oi" do
    get :oi
    assert_response :success
  end

end
