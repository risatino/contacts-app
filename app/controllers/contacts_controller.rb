class ContactsController < ApplicationController
  def everybody
    @contacts = Contact.all
  end

  def onecontact
    @contact = Contact.last
  end
end
