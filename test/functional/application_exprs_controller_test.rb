require File.dirname(__FILE__) + '/../test_helper'

class ApplicationExprsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:application_exprs)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_application_expr
    assert_difference('ApplicationExpr.count') do
      post :create, :application_expr => { }
    end

    assert_redirected_to application_expr_path(assigns(:application_expr))
  end

  def test_should_show_application_expr
    get :show, :id => application_exprs(:puts_hello_world).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => application_exprs(:puts_hello_world).id
    assert_response :success
  end

  def test_should_update_application_expr
    put :update, :id => application_exprs(:puts_hello_world).id, :application_expr => { }
    assert_redirected_to application_expr_path(assigns(:application_expr))
  end

  def test_should_destroy_application_expr
    assert_difference('ApplicationExpr.count', -1) do
      delete :destroy, :id => application_exprs(:puts_hello_world).id
    end

    assert_redirected_to application_exprs_path
  end
end
