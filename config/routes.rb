Rails.application.routes.draw do
  get 'welcome/index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


  resources :spaces, :users

  root 'sessions#new'
end
