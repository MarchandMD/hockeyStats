Rails.application.routes.draw do
  get 'links/index'
  get 'about/index'
  root to: 'welcome#index'

  resources :scores, only: %i[index show post]

  resources :users, only: %i[index show create] do
    resources :predictions, only: %i[index new create]
  end
end
