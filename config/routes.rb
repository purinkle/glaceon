Glaceon::Application.routes.draw do
  resources :pages, only: :show

  root to: 'pages#show', defaults: { id: 1 }
end