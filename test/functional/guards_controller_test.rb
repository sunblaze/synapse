require File.dirname(__FILE__) + '/../test_helper'

class GuardsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:guards)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_guard
    assert_difference('Guard.count') do
      post :create, :guard => { }
    end

    assert_redirected_to guard_path(assigns(:guard))
  end

  def test_should_show_guard
    get :show, :id => guards(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => guards(:one).id
    assert_response :success
  end

  def test_should_update_guard
    put :update, :id => guards(:one).id, :guard => { }
    assert_redirected_to guard_path(assigns(:guard))
  end

  def test_should_destroy_guard
    assert_difference('Guard.count', -1) do
      delete :destroy, :id => guards(:one).id
    end

    assert_redirected_to guards_path
  end
end
