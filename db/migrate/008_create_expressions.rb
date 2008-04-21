class CreateExpressions < ActiveRecord::Migration
  def self.up
    create_table :expressions do |t|
      t.integer :body_id
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :expressions
  end
end
