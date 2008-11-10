class AddListIdToExpression < ActiveRecord::Migration
  def self.up
    add_column :expressions, :list_id, :integer
  end

  def self.down
    remove_column :expressions, :list_id
  end
end
