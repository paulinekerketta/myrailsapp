require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get welcome_home_url
    assert_response :success
  end

  test "should get about" do
    get welcome_about_url
    assert_response :success
  end

  test "should get login" do
    get welcome_login_url
    assert_response :success
  end

  test "should get report" do
    get welcome_report_url
    assert_response :success
  end

end
