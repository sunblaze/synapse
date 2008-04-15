class Body < ActiveRecord::Base
	belongs_to :clause
	
	def expressions
		['io:format("Hello world\n")']
	end
end
