Rails.application.routes.draw do
 get '/all' => 'contacts#all_contacts'
 get '/contact_data' => 'contacts#one_contact'
end
