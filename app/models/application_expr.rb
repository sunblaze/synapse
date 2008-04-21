class ApplicationExpr < ActiveRecord::Base
	belongs_to :expression
	has_many :primary_exprs, :order => "primary_exprs.position"
	has_many :expressions, :extend => Expression::ToSExtension

	def to_s
		if apply
			primary_exprs.join(":") + 
				( (expressions.blank?) ? '' : "(#{expressions.to_s})" )
		else
			primary_exprs.first.to_s
		end
		#'io:format("Hello world\n")'
	end
end
