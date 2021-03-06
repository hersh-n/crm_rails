class ContactsController < ApplicationController

  def index
  	if params[:first_name]
      @contacts = current_user.contacts.where("LOWER(first_name) LIKE LOWER(?)", "%#{params[:first_name]}%")
    else
     @contacts = current_user.contacts
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
  	@contact = Contact.find(params[:id])
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_path
  end

  def new
  	@contacts = Contact.new
  end

  def create
    @contacts = Contact.new(contact_params)
    @contacts.user = current_user
    if @contacts.save
    	redirect_to @contacts
    else
    	render :new
    end

  end

  def edit
  	@contact = Contact.find(params[:id])
  end

  def update
  	@contact = Contact.find(params[:id])

  	if @contact = @contact.update_attributes(contact_params)
    	redirect_to action: :show
    else
    	render :edit
    end

  end

  private
  def contact_params
  	params.require(:contact).permit(:first_name, :last_name, :email, :note, :phone_number)
  end

end
