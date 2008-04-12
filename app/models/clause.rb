class Clause < ActiveRecord::Base
	belongs_to :function
	acts_as_list :scope => :function
	
	has_one :head, :dependent => :destroy
	has_one :body, :dependent => :destroy
end
