Glaceon::Application.routes.draw do
  devise_for :users, only: :sessions
  resources :pages
  root to: 'home#index'
end