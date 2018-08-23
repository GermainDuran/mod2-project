Rails.application.routes.draw do
  post '/phrases/state_select', to: "phrases#state_select"
  post '/phrases/categorize', to: "phrases#categorize", as: 'categorize'
  patch '/phrases/:id/edit_state', to: "phrases#edit_state"
  post '/phrases/:id/rate', to: "ratings#rate"
  delete '/logout', to: "sessions#logout"

  resources :comments, :phrases, :users
  resources :states, only: [:index,:show]
  resources :regions, only: [:index,:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/login', to: "sessions#login", as: "login"
  post '/login', to: "sessions#create"

  get '/', to: "application#home", as: "home"

  get '/search', to: "phrases#search", as: 'search'

  get '/startup/index', to: "startup#index"

end
