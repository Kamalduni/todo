Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'todo_list#todo_view'

  get 'todo_form' => 'todo_list#todo_form'
  get 'todo_show' => 'todo_list#todo_show'

  resources :todo_list
end
