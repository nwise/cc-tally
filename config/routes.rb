CcTally::Application.routes.draw do
  devise_for :users

  resources :scenarios
  resources :factions
  resources :game_types
  resources :players
  resources :games

  root :to => "games#index"
end
