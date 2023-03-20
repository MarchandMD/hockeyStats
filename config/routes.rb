Rails.application.routes.draw do
  get 'links/index'
  get 'about/index'
  get '/auth/github/callback', to: 'sessions#create'
  get '/users/login_form', to: 'users#login_form'
  post '/login', to: 'users#login'
  root to: 'welcome#index'

  resources :scores, only: %i[index show post]

  resources :users, only: %i[index show create update] do
    resources :predictions, only: %i[index new create]
  end
end
