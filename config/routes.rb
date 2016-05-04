Rails.application.routes.draw do
  # devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  devise_for :users, :controllers => {registrations: 'registrations'}

  resources :users
  resources :toys
  resources :conversations

  get '/auth/:provider/callback', to: 'sessions#create'

  root 'static_pages#home'
end
