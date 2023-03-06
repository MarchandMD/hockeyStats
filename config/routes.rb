Rails.application.routes.draw do
  get 'links/index'
  get 'about/index'
  root to: 'welcome#index'
  resources :teams, only: %i[index show] do
    resources :players, only: %i[index], controller: 'rosters'
    resources :players, only: %i[show]
  end
  resources :standings, only: %i[index show]
  resources :leaders, only: [:index]
  resources :schedule, only: [:index]
  resources :scores, only: %i[index show post]
  resources :configurations, only: [:index]
  resources :predictions
end
