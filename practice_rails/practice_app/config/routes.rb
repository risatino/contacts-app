Rails.application.routes.draw do
 get '/' => 'pages#welcome'
 get '/hello' => 'pages#hotdog'
end
