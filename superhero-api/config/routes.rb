Rails.application.routes.draw do
  namespace :ap1 do
    namespace :v1 do
      get '/superheros' => 'superheros#index'
      post '/superheros' => 'superheros#create'
      get '/superheros/:id' => 'superheros#show'
      patch '/superheros/:id' => 'superheros#update'
      delete '/superheros/:id' => 'superheros#destroy'
    end

    namespace :v2 do
      get '/superheros' => 'superheros#index'
      post '/superheros' => 'superheros#create'
      get '/superheros/:id' => 'superheros#show'
      patch '/superheros/:id' => 'superheros#update'
      delete '/superheros/:id' => 'superheros#destroy'
    end
  end
end
