class AddAtomToAtomicLiteral < ActiveRecord::Migration
  def self.up
    add_column :atomic_literals, :atom_literal_id, :integer
  end

  def self.down
    remove_column :atomic_literals, :atom_literal_id
  end
end
