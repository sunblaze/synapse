class CreatePrimaryExprs < ActiveRecord::Migration
  def self.up
    create_table :primary_exprs do |t|
      t.integer :application_expr_id
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :primary_exprs
  end
end
