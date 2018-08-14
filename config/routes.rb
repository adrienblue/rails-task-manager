Rails.application.routes.draw do
  get '/tasks', to: 'tasks#index'
  delete 'tasks/:id', to: "tasks#destroy", as: "delete_task"
  get '/tasks/:id', to: 'tasks#show', as: :task


  get '/task/new', to: 'tasks#new', as: :new
  post '/tasks', to: 'tasks#create'

  get '/tasks/:id/edit', to: "tasks#edit", as: :edit_tasks
  patch '/tasks/:id', to: "tasks#update"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
