class Head < ActiveRecord::Base
	belongs_to :clause
	has_many :patterns
	has_one :guard
end
