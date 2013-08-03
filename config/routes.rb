CwdgRails::Application.routes.draw do
  root 'static_pages#home' 
  
  # Static Page(s)
  match 'about', to: 'static_pages#about', via: :get

  # Sessions
  match 'auth/:provider/callback', to: 'sessions#create', via: :get
  match 'auth/failure', to: redirect('/'), via: :get
  match 'signout', to: 'sessions#destroy', via: :get
end
