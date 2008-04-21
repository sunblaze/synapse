class AddMawjewlToFunction < ActiveRecord::Migration
  def self.up
    add_column :functions, :mawjewl_id, :integer
  end

  def self.down
    remove_column :functions, :mawjewl_id
  end
end
