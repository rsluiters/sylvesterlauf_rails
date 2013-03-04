SylvesterlaufRails::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  resources :events

  root :to => 'homepage#index'
  match '/homepage/strecke',  to: 'homepage#strecke'
  match '/homepage/googlemaps',  to: 'homepage#googlemaps'

  match '/set_language/:locale',  to: 'application#set_language'

end
