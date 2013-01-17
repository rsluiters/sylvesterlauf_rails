SylvesterlaufRails::Application.routes.draw do
  get "users/new"

  resources :events

  root :to => 'homepage#index'

end
