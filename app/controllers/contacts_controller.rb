class ContactsController < ApplicationController

  def index
  	@contacts = Contact.all
  end

  def show
  	@contact = Contact.find(params[:id])
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to all_contacts
  end

  def new
  	@contacts = Contact.new
  end

  def create
    @contacts = Contact.new(contact_params)

    if @contacts.save
    	redirect_to action: :show
    else
    	render :new
    end

  end

  private
  def contact_params
  	params.require(:contact).permit(:first_name, :last_name, :email, :note, :phone_number)
  end

end
