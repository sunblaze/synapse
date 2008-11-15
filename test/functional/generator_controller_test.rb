require File.dirname(__FILE__) + '/../test_helper'

class GeneratorControllerTest < ActionController::TestCase
  def test_new
		get :new
		assert_response :ok
  end

	def test_hello_world
	  body = create_body(:expressions => [
	    create_expression(:application_expr => 
	      create_application_expr(:apply => true, :primary_exprs => [
	        create_primary_expr(:atomic_literal => 
	          create_atomic_literal(:atom_literal => 
	            create_atom_literal(:print_name => 'io')
	          )
	        ),
	        create_primary_expr(:position => 1, :atomic_literal =>
	          create_atomic_literal(:atom_literal => 
	            create_atom_literal(:print_name => 'format')
	          )
	        )
	      ], :expressions => [
	        create_expression(:application_expr =>
	          create_application_expr(:primary_exprs => [
	            create_primary_expr(:atomic_literal =>
	              create_atomic_literal(:string_literals => [
	                create_string_literal(:characters => "Hello world\\n")
	              ])
	            )
	          ])
	        )
	      ])
	    )
	  ]) 
	  
		post :create, :id => body.clause.function.mawjewl.id
		assert_response_equals_file 'hello'
	end
	
	def test_hello_world_2
		post :create, :id => mawjewls('hello_world_2').id
		assert_response_equals_file 'hello2'
	end
	
	def test_format_number
	  post :create, :id => mawjewls('format_number').id
		assert_response_equals_file 'format_number'
  end
end
