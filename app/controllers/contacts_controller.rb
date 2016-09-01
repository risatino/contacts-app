class ContactsController < ApplicationController
  def everybody
    @contacts = Contact.all
  end

  def onecontact
    @contact = Contact.last
  end

  def get_form
  
  end

  def send_form
    @contacts = params[:contact]
  end
end
