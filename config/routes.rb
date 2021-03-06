Rails.application.routes.draw do
  root 'events#index'

  resources :users
  resources :events
  resources :sessions, only: [:new, :create, :destroy]

  resources :users do
member do
  get :confirm_email
end
end

  get 'signup', to:'users#new', as:'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
