Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/home'

  get 'static_pages/about'
  root to: 'static_pages#home'


  # User profile page
  resources :users, only: [:show]

  resources :tags

  resources :photos
end
