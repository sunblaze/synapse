class AtomicLiteral < ActiveRecord::Base
	belongs_to :primary_expr
	belongs_to :atom_literal
	has_many :string_literals

	def to_s
		case when !string_literals.blank?
			string_literals.join('')
		when atom_literal
			atom_literal.to_s
		end
	end
end
