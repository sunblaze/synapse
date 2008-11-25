require File.dirname(__FILE__) + '/../test_helper'

class GeneratorControllerTest < ActionController::TestCase
  private
  def create_string_expression(string)
    create_expression(:application_expr => 
      create_application_expr(:primary_exprs => [
        create_primary_expr(:atomic_literal => 
          create_atomic_literal(:string_literals => [
            create_string_literal(:characters => string)
          ])
        )
      ])
    )
  end
  
  def create_atom_expressions(*atom_names)
    i = 0
    atom_names.map do |name|
      create_primary_expr(:position => i += 1, :atomic_literal =>
        create_atomic_literal(:atom_literal => 
          create_atom_literal(:print_name => name)
        )
      )
    end
  end
  
  def post_create_mawjewl
    body = yield
    post :create, :id => body.clause.function.mawjewl.id
  end
  
  public
  def test_new
		get :new
		assert_response :ok
  end

	def test_hello_world 
	  post_create_mawjewl do
  	  create_body(:expressions => [
  	    create_expression(:application_expr => 
  	      create_application_expr(:apply => true, 
  	        :primary_exprs => create_atom_expressions("io","format"), 
  	        :expressions => [create_string_expression("Hello world\\n")])
  	    )
  	  ])
    end
	  
		assert_response_equals_file 'hello'
	end
	
	def test_hello_world_2
		post_create_mawjewl do
  	  create_body(:expressions => [
  	    create_expression(:application_expr => 
  	      create_application_expr(:apply => true, 
  	        :primary_exprs => create_atom_expressions("io","format"), 
  	        :expressions => [create_string_expression("Hello world\\n")])
  	    ),
  	    create_expression(:application_expr => 
  	      create_application_expr(:apply => true, 
  	        :primary_exprs => create_atom_expressions("io","format"), 
  	        :expressions => [create_string_expression("Hi there\\n")])
  	    )
  	  ])
    end
    
		assert_response_equals_file 'hello2'
	end
	
	def test_format_number
	  post_create_mawjewl do
  	  create_body(:expressions => [
  	    create_expression(:application_expr => 
  	      create_application_expr(:apply => true, 
  	        :primary_exprs => create_atom_expressions("io","format"), 
  	        :expressions => [
  	          create_string_expression("Here is a number:~B~n"),
  	          create_expression(:application_expr => 
                create_application_expr(:primary_exprs => [
                  create_primary_expr(:atomic_literal => 
                    create_atomic_literal(:list => 
                      create_list(:expressions => 
                        [
                          create_expression(:application_expr => 
                            create_application_expr(:primary_exprs =>
                              create_atom_expressions("25")
                            )
                          )
                        ]
                      )
                    )
                  )
                ])
              )
  	        ]
  	      )
  	    )
  	  ])
    end
    
		assert_response_equals_file 'format_number'
  end
end
