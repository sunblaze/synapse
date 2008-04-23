class CreateStringLiterals < ActiveRecord::Migration
  def self.up
    create_table :string_literals do |t|
      t.integer :atomic_literal_id
      t.text :characters

      t.timestamps
    end
  end

  def self.down
    drop_table :string_literals
  end
end
