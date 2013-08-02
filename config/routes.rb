CwdgRails::Application.routes.draw do
  
  #Root 
  root 'static_pages#home' 
  
  #Static Page(s)
  match 'about', to: 'static_pages#about', via: :get
end
