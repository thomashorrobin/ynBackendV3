require 'test_helper'

class ApplePhonesControllerTest < ActionController::TestCase
  setup do
    @apple_phone = apple_phones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apple_phones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apple_phone" do
    assert_difference('ApplePhone.count') do
      post :create, apple_phone: { City_id: @apple_phone.City_id, device_token: @apple_phone.device_token, email: @apple_phone.email, first_name: @apple_phone.first_name, last_name: @apple_phone.last_name }
    end

    assert_redirected_to apple_phone_path(assigns(:apple_phone))
  end

  test "should show apple_phone" do
    get :show, id: @apple_phone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apple_phone
    assert_response :success
  end

  test "should update apple_phone" do
    patch :update, id: @apple_phone, apple_phone: { City_id: @apple_phone.City_id, device_token: @apple_phone.device_token, email: @apple_phone.email, first_name: @apple_phone.first_name, last_name: @apple_phone.last_name }
    assert_redirected_to apple_phone_path(assigns(:apple_phone))
  end

  test "should destroy apple_phone" do
    assert_difference('ApplePhone.count', -1) do
      delete :destroy, id: @apple_phone
    end

    assert_redirected_to apple_phones_path
  end
end
