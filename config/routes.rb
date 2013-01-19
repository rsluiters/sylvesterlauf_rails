SylvesterlaufRails::Application.routes.draw do
  resources :users
  match '/signup',  to: 'users#new'
  
  resources :events

  root :to => 'homepage#index'

end
