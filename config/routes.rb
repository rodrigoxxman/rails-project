Rails.application.routes.draw do
  get 'startup/index'

  get 'page/index'

resources :sessions, only: [:new, :create, :destroy]
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  devise_for :users
  get 'welcome/index'
  
  resources :employees
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
