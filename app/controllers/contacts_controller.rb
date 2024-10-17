class ContactsController < ApplicationController
    # GET /contacts
    def index
      contacts = Contact.all
      render json: contacts
    end
  
    # GET /contacts/:id
    def show
      contact = Contact.find(params[:id])
      render json: contact
    rescue ActiveRecord::RecordNotFound
      render json: { error: 'Contact not found' }, status: :not_found
    end
end
