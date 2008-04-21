class AddApplicationExprIdToExpression < ActiveRecord::Migration
  def self.up
    add_column :expressions, :application_expr_id, :integer
  end

  def self.down
    remove_column :expressions, :application_expr_id
  end
end
