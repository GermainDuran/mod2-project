Rails.application.routes.draw do
  post '/phrases/state_select', to: "phrases#state_select"
  resources :comments, :phrases, :users
  resources :states, only: [:index,:show]
  resources :regions, only: [:index,:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/login', to: "sessions#login", as: "login"
  post '/login', to: "sessions#create", as: "log"
end
