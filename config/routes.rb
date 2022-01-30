Rails.application.routes.draw do
  get 'schedule/index'
  get 'leaders/index'
  get 'scores/index'
  get 'standings/show'
    root to: 'welcome#index'

  resources :teams, only:[:index, :show]
  resources :players, only:[:index, :show]
  resources :standings, only:[:index]
end
