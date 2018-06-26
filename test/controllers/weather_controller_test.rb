require 'test_helper'

class WeatherControllerTest < ActionController::TestCase
  test "should get search" do
    get :search
    assert_response :success
  end

end
