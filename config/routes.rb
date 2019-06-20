Rails.application.routes.draw do
  get '/box', to:'questions#box'
  get '/new', to:'questions#new'
  post '/questions/create', to:'questions#create'
  root to:'questions#new'
end
