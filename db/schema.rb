# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20) do

  create_table "application_exprs", :force => true do |t|
    t.integer  "expression_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "apply"
  end

  create_table "atom_literals", :force => true do |t|
    t.integer  "atomic_literal_id"
    t.string   "print_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "atomic_literals", :force => true do |t|
    t.integer  "primary_expr_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "atom_literal_id"
  end

  create_table "bodies", :force => true do |t|
    t.integer  "clause_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clauses", :force => true do |t|
    t.integer  "function_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expressions", :force => true do |t|
    t.integer  "body_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "application_expr_id"
    t.integer  "list_id"
  end

  create_table "functions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mawjewl_id"
  end

  create_table "guards", :force => true do |t|
    t.integer  "head_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "heads", :force => true do |t|
    t.integer  "clause_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lists", :force => true do |t|
    t.integer  "atomic_literal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mawjewls", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patterns", :force => true do |t|
    t.integer  "head_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "primary_exprs", :force => true do |t|
    t.integer  "application_expr_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "string_literals", :force => true do |t|
    t.integer  "atomic_literal_id"
    t.text     "characters"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
