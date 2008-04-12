class Function < ActiveRecord::Base
	has_many :clauses, :dependent => :destroy, :order => "clauses.order"
end
