Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#index"

  get '/users', to: 'user#index', as: 'users'
  get '/signup', to: 'user#new', as: 'new_user'
  post '/users', to: 'user#create'
  get '/users/:id/edit', to: 'user#edit', as: 'edit_user'
  patch '/users/:id', to: 'user#update'
  get '/users/:id', to: 'user#show', as: 'user'

  get '/patient/:id', to: 'patient#show', as: 'patient'
  get '/patient/:id/edit', to: 'patient#edit', as: 'edit_patient'
  patch '/patient/:id', to: 'patient#update'

  get '/caregiver/:id', to: 'caregiver#show', as: 'caregiver'
  get '/caregiver/:id/edit', to: 'caregiver#edit', as: 'edit_caregiver'
  patch '/caregiver/:id', to: 'caregiver#update'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

end
