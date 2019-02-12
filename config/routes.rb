Rails.application.routes.draw do
  get 'welcome/index'

  resources :spaces, :users

  root 'welcome#index'
end
