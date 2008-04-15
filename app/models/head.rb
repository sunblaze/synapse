class Head < ActiveRecord::Base
	belongs_to :clause
	
	def pattern
		'_'
	end
end
