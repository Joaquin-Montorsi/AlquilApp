Rails.application.routes.draw do
  root :to => 'users#index'

  get 'login' => 'user_sessions#new', :as => :login
  post 'login' => "user_sessions#create"
  post 'logout' => 'user_sessions#destroy', :as => :logout

  resources :users
  resources :reports
  resources :rentals
  resources :cards
  resources :cars
  resources :positions
end
