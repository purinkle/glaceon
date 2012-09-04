Glaceon::Application.routes.draw do
  devise_for :users, only: :sessions
  resources :pages, only: :index
  root to: 'home#index'
end