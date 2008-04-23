class StringLiteral < ActiveRecord::Base
	belongs_to :atomic_literal
	
	def to_s
		'"'+characters+'"'
	end
end
