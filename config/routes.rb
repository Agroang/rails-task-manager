Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # # Create
  # get 'tasks/new', to: 'tasks#new', as: :new_task
  # post 'tasks', to: 'tasks#create', as: :tasks
  # # Read
  # get '/tasks', to: 'tasks#index'
  # get '/task/:id', to: 'tasks#show', as: :task
  # # Update
  # get 'task/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch '/task/:id', to: 'tasks#update'
  # # Delete
  # delete 'task/:id', to: 'tasks#destroy'

  resources :tasks
  # this does the same as above!
end
