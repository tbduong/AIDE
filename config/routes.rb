Rails.application.routes.draw do

  get '/users', to: 'user#index', as: 'users'
  get '/signup', to: 'user#new', as: 'new_user'
  post '/users', to: 'user#create'

end
