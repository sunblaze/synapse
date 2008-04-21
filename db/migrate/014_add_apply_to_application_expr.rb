class AddApplyToApplicationExpr < ActiveRecord::Migration
  def self.up
    add_column :application_exprs, :apply, :boolean
  end

  def self.down
    remove_column :application_exprs, :apply
  end
end
