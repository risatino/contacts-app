Rails.application.routes.draw do
  get '/games1' => 'params_games#app_name'
  get '/games2' => 'params_games#a_start'
  get '/games3' => 'params_games#guess_my_number'
  get '/url_guess_a_number/:guess' => 'params_games#url'
  get '/show_form' => 'params_games#get_form'
  post '/send_form' => 'params_games#send_form'

  
end
