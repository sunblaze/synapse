module FixtureReplacement
  ### Defaults ###
  attributes_for :mawjewl do |m|
    m.name = String.random
  end
  
  attributes_for :function do |f|
    f.name = 'main'
    f.mawjewl = default_mawjewl
  end
  
  attributes_for :clause do |c|
    c.position = 0
    c.function = default_function
    c.head = default_head
  end
  
  attributes_for :head do |h|
    h.patterns = [default_pattern]
  end
  
  attributes_for :pattern do |p|
    p.position = 0
  end
  
  attributes_for :body do |b|
    b.clause = default_clause
    b.expressions = [default_expression]
  end
  
  attributes_for :expression do |e|
  end
  
  attributes_for :application_expr do |a|
  end
  
  attributes_for :primary_expr do |p|
    p.position = 0
  end
  
  attributes_for :atomic_literal do |a|
  end
  
  attributes_for :atom_literal do |a|
  end
  
  attributes_for :string_literal do |s|
  end
  
  attributes_for :list do |l|
  end
end