class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.js { render :create, layout: false }
      else
        format.js do
          render :errors, locals: { message: t('contacts.error.all_required')} ,
                 layout: false
        end
      end
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
