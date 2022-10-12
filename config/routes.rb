Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do 
    get '/users/sign_out' => 'devise/sessions#destroy' 
  end

  # Defines the root path route ("/")
  root "public_receipes#index"
  resources :foods, only: [:index]
  resources :receipes, only: [:index, :show]
  resources :inventories, only: [:index, :show]
  resources :shopping_lists, only: [:index]
  resources :public_receipes, only: [:index]
end
