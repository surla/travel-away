Rails.application.routes.draw do

  get 'trips/new'
  get 'trips/show'
  get 'trips/create'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users

  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'

  resources :sessions

  resources :trips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
