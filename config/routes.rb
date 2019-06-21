Rails.application.routes.draw do
  get '/new', to:'questions#new'
  get "box/:id" => "questions#box"
  post '/questions/create', to:'questions#create'
  root to:'questions#new'
end
