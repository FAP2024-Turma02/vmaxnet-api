module Api
    class AddressesController < ApplicationController
      # GET /addresses
      def index
        @addresses = Address.all
        render json: @addresses
      end
  
      # GET /addresses/:id
      def show
        @address = Address.find(params[:id])
        render json: @address
      end
    end
  end
  