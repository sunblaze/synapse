class Expression < ActiveRecord::Base
	module ToSWithNExtension
		def to_s
			map{|expr| "  #{expr}"}.join(",\n")
		end
	end
	
	module ToSExtension
		def to_s
			map{|expr| "#{expr}"}.join(",")
		end
	end
	
	belongs_to :body
	has_one :application_expr
	belongs_to :parent_application_expr, :class_name => 'ApplicationExpr', :foreign_key => :application_expr_id
	
	def to_s
		application_expr.to_s
	end
end
