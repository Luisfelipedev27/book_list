Rails.application.routes.draw do
  get 'session/new'
  get 'session/create'
  get 'home' => 'store#index' 
  resources :users
  resources :local_items
  root 'store#index', as: 'store_index'
  resources :lists
  resources :livros
  get "signup", to: "users#new"
  get "login", to: "session#new"
  post "login", to: "session#create"
  delete "logout", to: "session#destroy"
  resources :users, except: [:new]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
