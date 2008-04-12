class CreateClauses < ActiveRecord::Migration
  def self.up
    create_table :clauses do |t|
      t.integer :function_id
      t.integer :order

      t.timestamps
    end
  end

  def self.down
    drop_table :clauses
  end
end
