Rails.application.routes.draw do
  root to: 'home#index'
  patch 'capture', to: 'pokemons#capture'
  patch 'damage', to: 'pokemons#damage'
  patch 'heal', to: 'pokemons#heal'
  get 'new', to: 'pokemons#new'
  post 'create', to: 'pokemons#create'
  devise_for :trainers
  resources :trainers
end
