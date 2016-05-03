Rails.application.routes.draw do
  devise_for :users

  resources :users
  resources :toys
  resources :conversations

  root 'static_pages#home'
end
