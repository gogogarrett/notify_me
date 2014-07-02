class ContactsController < ApplicationController

  def index
    render json: Contact.visible
  end

  def show
    contact = Contact.find(params[:id])
    render json: contact
  end

  def create
    contact = Contact.new(contact_params)

    if contact.save
      render json: contact
    else
      render json: contact, status: 422
    end
  end

  def update
    contact = Contact.find(params[:id])
    if contact.update(contact_params)
      render json: contact
    else
      render json: contact, status: 422
    end
  end

  def destroy
    contact = Contact.find(params[:id])
    if contact.destroy
      render json: contact, status: 204
    else
      render json: contact
    end
  end

  private
  def contact_params
    params.require(:contact).permit!
  end
end
