class CreateAtomLiterals < ActiveRecord::Migration
  def self.up
    create_table :atom_literals do |t|
      t.integer :atomic_literal_id
			t.string :print_name

      t.timestamps
    end
  end

  def self.down
    drop_table :atom_literals
  end
end
