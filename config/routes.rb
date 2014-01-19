CwdgRails::Application.routes.draw do
  resources :users, only: [:show, :edit, :update]

  root 'static_pages#home'

  match 'about',                   to: 'static_pages#about',             via: :get
  match 'members',                 to: 'users#index',                    via: :get

  match 'auth/:provider/callback', to: 'sessions#create',                via: :get
  match 'auth/failure',            to: redirect('/'),                    via: :get
  match 'signout',                 to: 'sessions#destroy',               via: :get
end
