require File.dirname(__FILE__) + '/../test_helper'

class AtomicLiteralsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:atomic_literals)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_atomic_literal
    assert_difference('AtomicLiteral.count') do
      post :create, :atomic_literal => { }
    end

    assert_redirected_to atomic_literal_path(assigns(:atomic_literal))
  end

  def test_should_show_atomic_literal
    get :show, :id => atomic_literals(:hello_world_io).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => atomic_literals(:hello_world_io).id
    assert_response :success
  end

  def test_should_update_atomic_literal
    put :update, :id => atomic_literals(:hello_world_io).id, :atomic_literal => { }
    assert_redirected_to atomic_literal_path(assigns(:atomic_literal))
  end

  def test_should_destroy_atomic_literal
    assert_difference('AtomicLiteral.count', -1) do
      delete :destroy, :id => atomic_literals(:hello_world_io).id
    end

    assert_redirected_to atomic_literals_path
  end
end
