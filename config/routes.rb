Rails.application.routes.draw do
    root to: 'welcome#index'

  resources :teams, only:[:index, :show]
  resources :players, only:[:index, :show]
end
