SylvesterlaufRails::Application.routes.draw do

  resources :applications_events do
    resources :applications_applications
  end  


  resources :news


  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  resources :events

  root :to => 'homepage#index'
  get '/homepage/strecke',  to: 'homepage#strecke'
  get '/homepage/googlemaps',  to: 'homepage#googlemaps'
  get '/homepage/contact',  to: 'homepage#contact'

  get '/set_language/:locale',  to: 'application#set_language'

end
