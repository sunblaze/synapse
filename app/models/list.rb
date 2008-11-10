class List < ActiveRecord::Base
  belongs_to :atomic_literal
  has_many :expressions
  
  def to_s
    "[#{expressions.join(',')}]"
  end
end
