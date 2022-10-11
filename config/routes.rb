Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "foods#index"
  resources :foods, only: [:index]
  resources :receipes, only: [:index, :show]
  resources :inventories, only: [:index, :show]
  resources :shopping_lists, only: [:index]
  resources :public_receipes, only: [:index]
end
