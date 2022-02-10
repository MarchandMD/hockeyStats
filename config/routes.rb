Rails.application.routes.draw do
  resources :teams, only: %i[index show]
  resources :players, only: %i[index show]
  resources :standings, only: %i[index show]
  resources :leaders, only: [:index]
  resources :schedule, only: [:index]
  resources :scores, only: [:index]

  root to: 'welcome#index'
end
