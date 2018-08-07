
Rails.application.routes.draw do
  
  get 'pages/about'

  get 'pages/contact'

  get 'pages/resources'

  get 'categories/index'

  get 'categories/new'

  get 'categories/edit'

  get 'categories/show'

  get 'home/index'
  resources :posts
  resources :categories
  match '/about', to: 'pages#about' , via: :get
  match '/contact', to: 'pages#contact' , via: :get
  match '/resources', to: 'pages#resources' , via: :get


  root 'home#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end