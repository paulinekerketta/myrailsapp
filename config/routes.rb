Rails.application.routes.draw do
  resources :daydrivers
  devise_for :users
  get 'welcome/home'

  get 'welcome/about'

  get 'welcome/login'

  get 'welcome/report'

  resources :dailycashes
  root to: 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
