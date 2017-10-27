Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch "/capture", to: "pokemons#capture", as: "capture"
  patch "/damage", to: "pokemons#damage", as: "damage"
  post '/create', to: 'pokemon#create', as: 'pokemons'
  get '/new', to: 'pokemon#new', as: 'okemon'
end
