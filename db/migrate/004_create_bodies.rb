class CreateBodies < ActiveRecord::Migration
  def self.up
    create_table :bodies do |t|
      t.integer :clause_id

      t.timestamps
    end
  end

  def self.down
    drop_table :bodies
  end
end
