Rails.application.routes.draw do
  get '/superheros' => 'superheros#index'
  get '/superheros/new' => 'superheros#new'
  post '/superheros' => 'superheros#create'
  get '/superheros/:id' => 'superheros#show'
  get '/superheros/:id/edit' => 'superheros#edit'
  patch '/superheros/:id' => 'superheros#update'
  delete '/superheros/:id' => 'superheros#destroy'
end
