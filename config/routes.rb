Rails.application.routes.draw do
  resources :teams, only:[:index, :show]
  resources :players, only:[:index, :show]
  resources :standings, only:[:index, :show]
  resources :leaders, only: [:index]
  resources :schedule, only: [:index]
  resources :scores, only: [:index]

  root to: 'welcome#index'
end
