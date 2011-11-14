require 'test_helper'

class XControllerTest < ActionController::TestCase
  test "should get y" do
    get :y
    assert_response :success
  end

  test "should get z" do
    get :z
    assert_response :success
  end

end
