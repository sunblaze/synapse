class CreateHeads < ActiveRecord::Migration
  def self.up
    create_table :heads do |t|
      t.integer :clause_id

      t.timestamps
    end
  end

  def self.down
    drop_table :heads
  end
end
