require 'test_helper'

class MiscopostsControllerTest < ActionController::TestCase
  setup do
    @miscopost = miscoposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:miscoposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create miscopost" do
    assert_difference('Miscopost.count') do
      post :create, miscopost: { content: @miscopost.content, user_id: @miscopost.user_id }
    end

    assert_redirected_to miscopost_path(assigns(:miscopost))
  end

  test "should show miscopost" do
    get :show, id: @miscopost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @miscopost
    assert_response :success
  end

  test "should update miscopost" do
    patch :update, id: @miscopost, miscopost: { content: @miscopost.content, user_id: @miscopost.user_id }
    assert_redirected_to miscopost_path(assigns(:miscopost))
  end

  test "should destroy miscopost" do
    assert_difference('Miscopost.count', -1) do
      delete :destroy, id: @miscopost
    end

    assert_redirected_to miscoposts_path
  end
end
