require File.dirname(__FILE__) + '/../test_helper'

class PatternsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:patterns)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_pattern
    assert_difference('Pattern.count') do
      post :create, :pattern => { }
    end

    assert_redirected_to pattern_path(assigns(:pattern))
  end

  def test_should_show_pattern
    get :show, :id => patterns(:universal).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => patterns(:universal).id
    assert_response :success
  end

  def test_should_update_pattern
    put :update, :id => patterns(:universal).id, :pattern => { }
    assert_redirected_to pattern_path(assigns(:pattern))
  end

  def test_should_destroy_pattern
    assert_difference('Pattern.count', -1) do
      delete :destroy, :id => patterns(:universal).id
    end

    assert_redirected_to patterns_path
  end
end
