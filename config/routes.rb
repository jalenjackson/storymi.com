Rails.application.routes.draw do


  resources :articles do
    member do
      put :publish
    end
  end
  get '/profile/:id' , to: 'stories#profile'

  get '/category/:id' , to: 'categories#show', as: 'category'

  get '/story/new', to: 'choose#index'




  devise_for :users
  resources :stories do
    member do
      put :publish
    end
    resources :messages
  end
      root :to => 'stories#index'


  get 'stories/:id/view', to: 'stories#view'
end
