Rails.application.routes.draw do
  get 'links/index'
  get 'about/index'
  root to: 'welcome#index'
  resources :teams, only: %i[index show] do
    resources :players, only: %i[index show], controller: 'rosters'
  end
  resources :standings, only: %i[index show]
  resources :leaders, only: [:index]
  resources :schedule, only: [:index]
  resources :scores, only: [:index]
  resources :configurations, only: [:index]
  resources :predictions
end
