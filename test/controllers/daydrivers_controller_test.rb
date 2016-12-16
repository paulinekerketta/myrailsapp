require 'test_helper'

class DaydriversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daydriver = daydrivers(:one)
  end

  test "should get index" do
    get daydrivers_url
    assert_response :success
  end

  test "should get new" do
    get new_daydriver_url
    assert_response :success
  end

  test "should create daydriver" do
    assert_difference('Daydriver.count') do
      post daydrivers_url, params: { daydriver: { chargerate: @daydriver.chargerate, dirvertotal: @daydriver.dirvertotal, extrapay: @daydriver.extrapay, name: @daydriver.name, noofdelivery: @daydriver.noofdelivery, phone: @daydriver.phone } }
    end

    assert_redirected_to daydriver_url(Daydriver.last)
  end

  test "should show daydriver" do
    get daydriver_url(@daydriver)
    assert_response :success
  end

  test "should get edit" do
    get edit_daydriver_url(@daydriver)
    assert_response :success
  end

  test "should update daydriver" do
    patch daydriver_url(@daydriver), params: { daydriver: { chargerate: @daydriver.chargerate, dirvertotal: @daydriver.dirvertotal, extrapay: @daydriver.extrapay, name: @daydriver.name, noofdelivery: @daydriver.noofdelivery, phone: @daydriver.phone } }
    assert_redirected_to daydriver_url(@daydriver)
  end

  test "should destroy daydriver" do
    assert_difference('Daydriver.count', -1) do
      delete daydriver_url(@daydriver)
    end

    assert_redirected_to daydrivers_url
  end
end
