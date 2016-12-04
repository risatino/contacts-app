class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def contact
    
  end

  def new
  
  end

  def create
    @contact = Contact.create(first_name: params[:first_name],
                              middle_name: params[:middle_name],
                              last_name: params[:last_name],
                              email: params[:email],
                              phone: params[:phone])

    redirect_to "/contacts/#{@contact.id}"
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    @groups = @contact.groups
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact = Contact.create(first_name: params[:first_name],
                              middle_name: params[:middle_name],
                              last_name: params[:last_name],
                              email: params[:email],
                              phone: params[:phone])

    redirect_to "/contacts/#{@contact.id}"
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    redirect_to '/contacts'
  end
end
