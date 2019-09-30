Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/help'
  
  #resources :users
  
  get 'users' => 'users#index', as: :users
  post 'users' => 'users#create', as: :create_user
  get 'users/new' => 'users#new', as: :new_user
  # get 'users/:id/edit' => 'users#edit', as: :edit_user
  # get 'users/:id/edit' => 'users#show', as: :user
  # patch 'users/:id/edit' => 'users#update', as: :show_user
  # put 'users/:id/edit' => 'users#update', as: :update_user
  # delete 'users/:id/edit' => 'users#destroy', as: :destroy_user
end
