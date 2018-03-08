Rails.application.routes.draw do
  get 'contacts/new'

  get 'contacts/create'

  resources :menus
  get 'studies',    to: 'pages#studies',      as: 'studies'
  get 'skills',     to: 'pages#skills',       as: 'skills'
  get 'portfolio',  to: 'pages#portfolio',    as: 'portfolio'
  get 'blog',       to: 'pages#blog',         as: 'blog'
  get 'contact',    to: 'pages#contact',      as: 'contact'

  # Routes for contact
  resources 'contacts', only: [:new, :create], path_names: { new: '' }
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end


  root to: 'pages#index'

end
