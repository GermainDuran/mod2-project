Rails.application.routes.draw do
  resources :comments
  resources :phrases
  resources :users
  resources :states
  resources :regions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end