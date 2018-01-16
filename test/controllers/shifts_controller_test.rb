require 'test_helper'

class ShiftsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get shifts_show_url
    assert_response :success
  end

  test "should get create" do
    get shifts_create_url
    assert_response :success
  end

end
