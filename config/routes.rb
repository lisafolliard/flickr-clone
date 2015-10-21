Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/home'

  get 'static_pages/about'
  root to: 'static_pages#home'


    resources :photos


  # resources :photos do
  #   resources :comments
  # end

end
