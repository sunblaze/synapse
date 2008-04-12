class ChangeFunctionOrderToPosition < ActiveRecord::Migration
  def self.up
		rename_column :clauses, :order, :position
  end

  def self.down
		rename_column :clauses, :position, :order
  end
end