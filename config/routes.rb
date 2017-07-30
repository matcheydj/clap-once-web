Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/dashboard', to: 'users#dashboard'
  get '/incidents', to: 'incidents#index'


  root 'users#routing'
end
