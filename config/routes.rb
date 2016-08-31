Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#index", as: 'root'

  get '/users', to: 'users#index', as: 'users'
  get '/signup', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  get '/users/:id', to: 'users#show', as: 'user'

  get '/patients/:id', to: 'patients#show', as: 'patient'
  get '/patients/:id/edit', to: 'patients#edit', as: 'edit_patient'
  patch '/patients/:id', to: 'patients#update'

  get '/caregivers', to: 'caregivers#index', as: 'caregivers'
  get '/caregivers/:id', to: 'caregivers#show', as: 'caregiver'
  get '/caregivers/:id/edit', to: 'caregivers#edit', as: 'edit_caregiver'
  patch '/caregivers/:id', to: 'caregivers#update'
  get 'send_email/:id', to: 'caregivers#send_email', as: 'send_email'

  get '/specialties', to: 'specialties#index', as: 'specialties'
  get '/specialties/:id', to: 'specialties#show', as: 'specialty'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/resources', to: 'welcome#resources', as: 'resources'
  get '/about', to: 'welcome#about', as: 'about'

end
