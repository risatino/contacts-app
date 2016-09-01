Rails.application.routes.draw do
 get '/all' => 'contacts#everybody'
 get '/one_contact' => 'contacts#onecontact'

  get '/show_form' => 'contacts#get_form'
  post '/send_form' => 'contacts#send_form'

end
