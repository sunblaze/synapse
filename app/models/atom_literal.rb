class AtomLiteral < ActiveRecord::Base
	has_many :atomic_literals
	
	def to_s
		print_name
	end
end
