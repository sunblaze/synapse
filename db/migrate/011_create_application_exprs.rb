class CreateApplicationExprs < ActiveRecord::Migration
  def self.up
    create_table :application_exprs do |t|
      t.integer :expression_id

      t.timestamps
    end
  end

  def self.down
    drop_table :application_exprs
  end
end
