Rails.application.routes.draw do
  resources :users
  resources :alquilers
  resources :reportes
  resources :tarjeta
  resources :posicions
  resources :autos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
