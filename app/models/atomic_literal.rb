class AtomicLiteral < ActiveRecord::Base
	belongs_to :primary_expr
	belongs_to :atom_literal

	def to_s
		atom_literal.to_s
	end
end
