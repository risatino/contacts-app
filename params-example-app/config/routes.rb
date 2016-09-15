Rails.application.routes.draw do
  get '/query_params_example' => 'params_examples#query'
  get '/name' => 'params_examples#name'
  get '/a_name' => 'params_examples#name_starts_with_a'
  get '/guessing_game_query' => 'params_examples#guess_query'
  get '/url_segment_example/:wildcard' => 'params_examples#url'
  get '/show_form' => 'params_examples#get_form'
  post '/send_form' => 'params_examples#send_form'

  get '/guessing_game_form' => 'params_examples#display_guess_form'
end
