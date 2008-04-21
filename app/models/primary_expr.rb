class PrimaryExpr < ActiveRecord::Base
	belongs_to :application_expr
	acts_as_list :scope => :application_expr
	has_one :atomic_literal
	
	def to_s
		atomic_literal.to_s
	end
end
