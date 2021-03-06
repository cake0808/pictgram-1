Rails.application.routes.draw do
  get 'topics/new'

  get 'sessions/new'

  get 'pages/help'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :topics

   get 'favorites/index'
   post '/favorites', to: 'favorites#create'
end
