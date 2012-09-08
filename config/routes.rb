Glaceon::Application.routes.draw do
  devise_for :users, only: :sessions
  resources :pages, only: [:index, :new]
  root to: 'home#index'
end