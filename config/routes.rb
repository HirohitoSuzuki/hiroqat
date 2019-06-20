Rails.application.routes.draw do
  get '/box', to:'question#box'
  root to:'question#box'
end
