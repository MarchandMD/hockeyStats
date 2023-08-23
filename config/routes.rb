Rails.application.routes.draw do
  root to: 'welcome#index'

  get 'links/index'
  get 'about/index'
  get '/auth/github/callback', to: 'sessions#create'
  get '/users/login_form', to: 'users#login_form'
  post '/login', to: 'users#login'
  delete '/sessions', to: 'sessions#delete'

  resources :scores, only: %i[index show post]

  resources :users, onlye: %i[show]
end
