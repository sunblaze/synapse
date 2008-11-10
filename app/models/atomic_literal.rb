class AtomicLiteral < ActiveRecord::Base
	belongs_to :primary_expr
	belongs_to :atom_literal
	has_many :string_literals
	has_one :list

	def to_s
		case when !string_literals.blank?
			string_literals.join('')
		when atom_literal
			atom_literal.to_s
		when list
		  list.to_s
	  else
	    '!?!'
		end
	end
end
