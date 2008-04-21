require File.dirname(__FILE__) + '/../test_helper'

class PrimaryExprsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:primary_exprs)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_primary_expr
    assert_difference('PrimaryExpr.count') do
      post :create, :primary_expr => { }
    end

    assert_redirected_to primary_expr_path(assigns(:primary_expr))
  end

  def test_should_show_primary_expr
    get :show, :id => primary_exprs(:hello_world_io).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => primary_exprs(:hello_world_io).id
    assert_response :success
  end

  def test_should_update_primary_expr
    put :update, :id => primary_exprs(:hello_world_io).id, :primary_expr => { }
    assert_redirected_to primary_expr_path(assigns(:primary_expr))
  end

  def test_should_destroy_primary_expr
    assert_difference('PrimaryExpr.count', -1) do
      delete :destroy, :id => primary_exprs(:hello_world_io).id
    end

    assert_redirected_to primary_exprs_path
  end
end
