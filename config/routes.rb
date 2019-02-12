Rails.application.routes.draw do
  get 'welcome/index' do
    redirect 'welcome/index' unless Password.check_password(params[:username], params[:password])
    session[:username] = params[:username]
    redirect 'sessions/index'
  end

  resources :spaces, :users

  root 'welcome#index'
end
