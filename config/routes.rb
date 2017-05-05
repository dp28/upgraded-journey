Rails.application.routes.draw do
  resources :routes
  resources :events
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
