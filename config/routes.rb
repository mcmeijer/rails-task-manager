Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Index
  get '/tasks', to: 'tasks#index'
  # Create
  get 'tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'
  # Update
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch '/tasks/:id', to: 'tasks#update'
  # Remove
  delete '/tasks/:id', to: 'tasks#destroy', as: 'destroy'
  # Show apres index et create
  get '/tasks/:id', to: 'tasks#show', as: 'task'
end
