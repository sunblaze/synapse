class CreateGuards < ActiveRecord::Migration
  def self.up
    create_table :guards do |t|
      t.integer :head_id

      t.timestamps
    end
  end

  def self.down
    drop_table :guards
  end
end
