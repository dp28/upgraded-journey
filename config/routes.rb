Rails.application.routes.draw do
  resources :events
  root to: 'visitors#index'
  devise_for :users
  resources :users do
    resources :routes do
      resources :alerts
    end
  end
end
