Rails.application.routes.draw do


  resources :videos
  resources :articles do
    member do
      put :publish
    end
  end
  get '/profile/:id' , to: 'stories#profile'

  get '/category/:id' , to: 'categories#show', as: 'category'

  get '/story/new', to: 'choose#index'

  get '/stories', to: 'stories#index'

  root :to => 'home#index'

  resources :videos do
    resources :comments
    member do
      put "like", to: "videos#upvote"
      put "unlike", to: "videos#downvote"
    end
  end



  devise_for :users
  resources :stories do
    member do
      put :publish
    end
    resources :messages do
      member do
        put :is_correct
        put :is_correct2
      end
    end
  end


  get 'stories/:id/view', to: 'stories#view'
end
