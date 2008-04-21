class Function < ActiveRecord::Base
	has_many :clauses, :dependent => :destroy, :order => "clauses.position"
	belongs_to :mawjewl
end
