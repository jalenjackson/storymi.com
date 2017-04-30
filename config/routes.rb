Rails.application.routes.draw do


  get '/profile/:id' , to: 'stories#profile'

  devise_for :users
  resources :stories do
    member do
      put :publish
    end
    resources :messages
  end
  devise_scope :user do
    authenticated :user do
      root :to => 'stories#index'
    end
    unauthenticated :user do
      root :to => 'devise/registrations#new', as: :unauthenticated_root
    end
  end
    root to: "stories#index"

  get 'stories/:id/view', to: 'stories#view'
end
