class CreateAtomicLiterals < ActiveRecord::Migration
  def self.up
    create_table :atomic_literals do |t|
      t.integer :primary_expr_id

      t.timestamps
    end
  end

  def self.down
    drop_table :atomic_literals
  end
end
