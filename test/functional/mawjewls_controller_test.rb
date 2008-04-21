require File.dirname(__FILE__) + '/../test_helper'

class MawjewlsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:mawjewls)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_mawjewl
    assert_difference('Mawjewl.count') do
      post :create, :mawjewl => { }
    end

    assert_redirected_to mawjewl_path(assigns(:mawjewl))
  end

  def test_should_show_mawjewl
    get :show, :id => mawjewls(:hello_world).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => mawjewls(:hello_world).id
    assert_response :success
  end

  def test_should_update_mawjewl
    put :update, :id => mawjewls(:hello_world).id, :mawjewl => { }
    assert_redirected_to mawjewl_path(assigns(:mawjewl))
  end

  def test_should_destroy_mawjewl
    assert_difference('Mawjewl.count', -1) do
      delete :destroy, :id => mawjewls(:hello_world).id
    end

    assert_redirected_to mawjewls_path
  end
end
