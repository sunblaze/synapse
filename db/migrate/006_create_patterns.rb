class CreatePatterns < ActiveRecord::Migration
  def self.up
    create_table :patterns do |t|
      t.integer :head_id
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :patterns
  end
end
