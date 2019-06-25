Rails.application.routes.draw do
  get '/new/:id' => 'questions#new'
  get '/box/:id' => 'questions#box'
  post '/questions/create', to:'questions#create'
  post '/questions/newbox', to:'questions#newbox'
  root to:'questions#top'
end
