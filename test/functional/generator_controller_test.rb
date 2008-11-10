require File.dirname(__FILE__) + '/../test_helper'

class GeneratorControllerTest < ActionController::TestCase
  def test_new
		get :new
		assert_response :ok
  end

	def test_hello_world
		post :create, :id => mawjewls('hello_world').id
		assert_response_equals_file 'hello'
	end
	
	def test_hello_world_2
		post :create, :id => mawjewls('hello_world_2').id
		assert_response_equals_file 'hello2'
	end
	
	def test_format_number
	  debugger
	  post :create, :id => mawjewls('format_number').id
		assert_response_equals_file 'format_number'
  end
end
