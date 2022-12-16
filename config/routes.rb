Rails.application.routes.draw do
  devise_for :users
  root 'pictures#index'
  resources :pictures, only: [:index, :show]  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
