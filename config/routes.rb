Rails.application.routes.draw do
  devise_for :users
  resources :conversations
  resources :users
  resources :toys
end
