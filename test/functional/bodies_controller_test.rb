require File.dirname(__FILE__) + '/../test_helper'

class BodiesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:bodies)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_body
    assert_difference('Body.count') do
      post :create, :body => { }
    end

    assert_redirected_to body_path(assigns(:body))
  end

  def test_should_show_body
    get :show, :id => bodies(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => bodies(:one).id
    assert_response :success
  end

  def test_should_update_body
    put :update, :id => bodies(:one).id, :body => { }
    assert_redirected_to body_path(assigns(:body))
  end

  def test_should_destroy_body
    assert_difference('Body.count', -1) do
      delete :destroy, :id => bodies(:one).id
    end

    assert_redirected_to bodies_path
  end
end
