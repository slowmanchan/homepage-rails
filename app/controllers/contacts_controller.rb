class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      UserNotifier.send_email(@contact).deliver_later
      flash[:success] = "Sent !"
      redirect_to root_path
    else
      flash.now[:danger] = "Error !"
      render 'new'
    end


  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :body)
  end
end
