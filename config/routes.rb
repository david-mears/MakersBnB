Rails.application.routes.draw do
  get 'welcome/index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  post '/availabilities', to: 'availabilities#create'

  resources :spaces, :users

  root 'users#new'
end
