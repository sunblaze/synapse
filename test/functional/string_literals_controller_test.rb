require File.dirname(__FILE__) + '/../test_helper'

class StringLiteralsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:string_literals)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_string_literal
    assert_difference('StringLiteral.count') do
      post :create, :string_literal => { }
    end

    assert_redirected_to string_literal_path(assigns(:string_literal))
  end

  def test_should_show_string_literal
    get :show, :id => string_literals(:hello_world).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => string_literals(:hello_world).id
    assert_response :success
  end

  def test_should_update_string_literal
    put :update, :id => string_literals(:hello_world).id, :string_literal => { }
    assert_redirected_to string_literal_path(assigns(:string_literal))
  end

  def test_should_destroy_string_literal
    assert_difference('StringLiteral.count', -1) do
      delete :destroy, :id => string_literals(:hello_world).id
    end

    assert_redirected_to string_literals_path
  end
end
