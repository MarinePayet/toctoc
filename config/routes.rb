Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show, :index]
  resources :events, only: [:new, :create, :index]
  resources :services, only: [:show, :index]
  resources :posts, only: [:index, :new, :create] do
    member do
      put "like", to: "posts#like"
    end
  end
  resources :inboxes, only: [:index, :new, :create, :show] do
    resources :messages, only: [:index, :new, :create, :show]
    resources :participants, only: [:new, :create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "profile", to: "profiles#me", as: :profile
  get "profile/edit", to: "profiles#edit", as: :edit_profile
  patch "profile", to: "profiles#update", as: :update_profile
  get "choice", to: "pages#choice"
end
