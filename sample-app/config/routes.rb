Rails.application.routes.draw do
  get '/' => 'pages#time'
  get 'money' => 'pages#money'
  get '/happy' => 'pages#home'
  get '/sad' => "pages#kids"
  get '/life-goals' => "pages#quotes"
end
