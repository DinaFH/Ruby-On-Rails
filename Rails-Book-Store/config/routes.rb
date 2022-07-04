Rails.application.routes.draw do
  get 'admins/:id', to: 'admins#show'
  # get 'products/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
  #
  resources :products
  # resources :admins

end
