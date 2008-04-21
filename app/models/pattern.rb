class Pattern < ActiveRecord::Base
	belongs_to :head
	acts_as_list :scope => :head
	
	def to_s
		'_'
	end
end
