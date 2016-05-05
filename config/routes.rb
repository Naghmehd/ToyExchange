Rails.application.routes.draw do
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

  resources :users
  resources :toys
  resources :conversations
  resources :companies
  resources :wishes

  resources "contacts", only: [:new, :create]

  get '/auth/:provider/callback', to: 'sessions#create'

  root 'static_pages#home'
end
