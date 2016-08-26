Rails.application.routes.draw do

  get '/users', to: 'user#index', as: 'users'
  get '/signup', to: 'user#new', as: 'new_user'
  post '/users', to: 'user#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
