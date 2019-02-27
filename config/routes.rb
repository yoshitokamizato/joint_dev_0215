Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  get '/users', to: 'users#index'
  
end
