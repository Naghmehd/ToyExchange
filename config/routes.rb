Rails.application.routes.draw do
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

  get '/home' => 'static_pages#home', as: 'static_pages_home'
  resources :static_pages

  resources :users
  resources :toys


  resources :conversations do
    resources :messages
  end
  resources :companies
  resources :wishes

  resources "contacts", only: [:new, :create]

  get '/auth/:provider/callback', to: 'sessions#create'

  # authenticated do
  #    root :to => 'users#show', as: :authenticated
  #  end
  root :to => 'static_pages#home'

end
