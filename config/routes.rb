SylvesterlaufRails::Application.routes.draw do
  resources :events

  root :to => 'homepage#index'

end
