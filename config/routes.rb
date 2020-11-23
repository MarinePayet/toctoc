Rails.application.routes.draw do
  get 'messages/index'
  get 'messages/show'
  get 'posts/index'
  get 'events/new'
  get 'events/index'
  get 'services/show'
  get 'services/index'
  devise_for :users
  root to: 'pages#home'
  resources :user, only: [:show, :index]
  resources :event, only: [:new, :create, :index]
  resources :service, only: [:show, :index]
  resources :post, only: [:index, :new, :create]
  resources :messages, only: [:index, :new, :create, :show, :delete]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "profile", to: "profiles#me", as: :profile
end
