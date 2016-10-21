Rails.application.routes.draw do
  get '/' => 'documents#index'
  get '/documents' => 'documents#index'
  get '/documents/new' => 'documents#new'
  post '/documents' => 'documents#create'
  get '/documents/:id' => 'documents#show'
  get '/documents/:id/edit' => 'documents#edit'
  patch '/documents/:id' => 'documents#update'
  delete '/documents/:id' => 'documents#destroy'

  get '/legal-contract/documents/:id' => 'contracts#show-legal'

  get '/musician-contract/documents/:id' => 'contracts#show-music'
  
  get '/designer-contract/documents/:id' => 'contracts#show-design'

  get '/profiles' => 'profiles#index'
  get '/profiles/new' => 'profiles#new'
  post '/profiles' => 'profiles#create'
  get '/profiles/:id' => 'profiles#show'
  get '/profiles/:id/edit' => 'profiles#edit'
  patch '/profiles/:id' => 'profiles#update'
  delete '/profiles/:id' => 'profiles#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

end
