require File.dirname(__FILE__) + '/../test_helper'

class AtomLiteralsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:atom_literals)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_atom_literal
    assert_difference('AtomLiteral.count') do
      post :create, :atom_literal => { }
    end

    assert_redirected_to atom_literal_path(assigns(:atom_literal))
  end

  def test_should_show_atom_literal
    get :show, :id => atom_literals(:io).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => atom_literals(:io).id
    assert_response :success
  end

  def test_should_update_atom_literal
    put :update, :id => atom_literals(:io).id, :atom_literal => { }
    assert_redirected_to atom_literal_path(assigns(:atom_literal))
  end

  def test_should_destroy_atom_literal
    assert_difference('AtomLiteral.count', -1) do
      delete :destroy, :id => atom_literals(:io).id
    end

    assert_redirected_to atom_literals_path
  end
end
