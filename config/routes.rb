Rails.application.routes.draw do
  resources :reports
  resources :users
  resources :rentals
  resources :cards
  resources :cars
  resources :positions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
