Rails.application.routes.draw do
   #get 'favorites/index'
  get 'favorites/update'
   root to: "posts#index"
  devise_for :users
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
