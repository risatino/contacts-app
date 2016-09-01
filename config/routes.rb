Rails.application.routes.draw do
 get '/all' => 'contacts#everybody'
 get '/one_contact' => 'contacts#onecontact'

 
end
