require File.dirname(__FILE__) + '/../test_helper'

class ClausesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:clauses)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_clause
    assert_difference('Clause.count') do
      post :create, :clause => { }
    end

    assert_redirected_to clause_path(assigns(:clause))
  end

  def test_should_show_clause
    get :show, :id => clauses(:puts_hello_world).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => clauses(:puts_hello_world).id
    assert_response :success
  end

  def test_should_update_clause
    put :update, :id => clauses(:puts_hello_world).id, :clause => { }
    assert_redirected_to clause_path(assigns(:clause))
  end

  def test_should_destroy_clause
    assert_difference('Clause.count', -1) do
      delete :destroy, :id => clauses(:puts_hello_world).id
    end

    assert_redirected_to clauses_path
  end
end
