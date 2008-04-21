class Body < ActiveRecord::Base
	belongs_to :clause
	has_many :expressions, :extend => Expression::ToSWithNExtension
end
