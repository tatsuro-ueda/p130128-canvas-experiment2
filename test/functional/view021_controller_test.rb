require 'test_helper'

class View021ControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
