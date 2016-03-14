require 'test_helper'

class OfficeControllerTest < ActionController::TestCase
  test "should get findbypostcode" do
    get :findbypostcode
    assert_response :success
  end

end
