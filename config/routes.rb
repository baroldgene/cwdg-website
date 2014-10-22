Rails.application.routes.draw do
  resources :users, only: [:index, :show]

  root 'pages#home'

  get '/about' => 'pages#about'

  get '/auth/failure'            => 'sessions#failure'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/login'                   => 'sessions#new',     as: :login
  get '/logout'                  => 'sessions#destroy', as: :logout
end
