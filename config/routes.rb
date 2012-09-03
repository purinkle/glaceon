Glaceon::Application.routes.draw do
  resources :pages, only: :index
  root to: 'home#index'
end