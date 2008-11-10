ActionController::Routing::Routes.draw do |map|
  map.resources :lists

  map.resources :string_literals

  map.resources :atom_literals

  map.resources :atomic_literals

  map.resources :primary_exprs

  map.resources :application_exprs

  map.resources :mawjewls

  map.resources :mawdules

  map.resources :expressions

  map.resources :guards

  map.resources :patterns

  map.resources :bodies

  map.resources :heads

  map.resources :clauses

  map.resources :functions

	map.resources :generator, :singular => 'generate'

	map.root :controller => 'mawjewls'
end
