Rails.application.routes.draw do
  get 'pages/calendar'
  root to: 'pages#calendar'
  # get 'events/create'
  resources :userprojects
  resources :posts
  resources :users
  resources :events

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      patch '/updateprofile', to: 'users#current_user_edit'
      post '/createevent', to: 'events#create'
      get '/collaborations', to: 'userprojects#my_collaborations'
end
