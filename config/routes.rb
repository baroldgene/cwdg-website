CwdgRails::Application.routes.draw do

  resources :projects

  resources :users, only: [:show, :edit, :update] do
    resources :talks, except: [:index, :show]
  end

  root 'static_pages#home'

  match 'members',                 to: 'users#index',                    via: :get

  match 'auth/:provider/callback', to: 'sessions#create',                via: :get
  match 'auth/failure',            to: redirect('/'),                    via: :get
  match 'signout',                 to: 'sessions#destroy',               via: :get
end
