require File.dirname(__FILE__) + '/../test_helper'

class HeadsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:heads)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_head
    assert_difference('Head.count') do
      post :create, :head => { }
    end

    assert_redirected_to head_path(assigns(:head))
  end

  def test_should_show_head
    get :show, :id => heads(:any_one_arg).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => heads(:any_one_arg).id
    assert_response :success
  end

  def test_should_update_head
    put :update, :id => heads(:any_one_arg).id, :head => { }
    assert_redirected_to head_path(assigns(:head))
  end

  def test_should_destroy_head
    assert_difference('Head.count', -1) do
      delete :destroy, :id => heads(:any_one_arg).id
    end

    assert_redirected_to heads_path
  end
end
