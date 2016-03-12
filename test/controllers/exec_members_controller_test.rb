require 'test_helper'

class ExecMembersControllerTest < ActionController::TestCase
  setup do
    @exec_member = exec_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exec_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exec_member" do
    assert_difference('ExecMember.count') do
      post :create, exec_member: { Exec_id: @exec_member.Exec_id, Individual_id: @exec_member.Individual_id, possition: @exec_member.possition }
    end

    assert_redirected_to exec_member_path(assigns(:exec_member))
  end

  test "should show exec_member" do
    get :show, id: @exec_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exec_member
    assert_response :success
  end

  test "should update exec_member" do
    patch :update, id: @exec_member, exec_member: { Exec_id: @exec_member.Exec_id, Individual_id: @exec_member.Individual_id, possition: @exec_member.possition }
    assert_redirected_to exec_member_path(assigns(:exec_member))
  end

  test "should destroy exec_member" do
    assert_difference('ExecMember.count', -1) do
      delete :destroy, id: @exec_member
    end

    assert_redirected_to exec_members_path
  end
end
