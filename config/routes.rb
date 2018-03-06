Rails.application.routes.draw do
  resources :menus
  get 'studies',    to: 'pages#studies',      as: 'studies'
  get 'skills',     to: 'pages#skills',       as: 'skills'
  get 'portfolio',  to: 'pages#portfolio',    as: 'portfolio'
  get 'blog',       to: 'pages#blog',         as: 'blog'
  get 'contact',    to: 'pages#contact',      as: 'contact'

  # Routes for mailer
  #match 'contact' => 'contact#new', :as => 'contact', :via => :get
  #match 'contact' => 'contact#create', :as => 'contact', :via => :post


  root to: 'pages#index'

end
