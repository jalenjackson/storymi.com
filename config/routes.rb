Rails.application.routes.draw do


  get '/profile/:id' , to: 'stories#profile'

  devise_for :users
  resources :stories do
    member do
      put :publish
    end
    resources :messages
  end

    root to: "stories#index"

  get 'stories/:id/view', to: 'stories#view'
end
