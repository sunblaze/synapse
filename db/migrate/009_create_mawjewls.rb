class CreateMawjewls < ActiveRecord::Migration
  def self.up
    create_table :mawjewls do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :mawjewls
  end
end
