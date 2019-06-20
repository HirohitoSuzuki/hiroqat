Rails.application.routes.draw do
  get '/box', to:'questions#box'
  root to:'questions#box'
end
