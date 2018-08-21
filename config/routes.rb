Rails.application.routes.draw do
  resources :comments, :phrases, :users
  resources :states, only: [:index,:show]
  resources :regions, only: [:index,:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
