Rails.application.routes.draw do
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

  resources :users
  resources :toys
  resources :conversations

  get '/auth/:provider/callback', to: 'sessions#create'

  root 'static_pages#home'
end
