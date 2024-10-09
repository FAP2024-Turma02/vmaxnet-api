class CorporateClientsController < ApplicationController
    def index
      @corporate_clients = CorporateClient.all
      render json: @corporate_clients
    end
  
    def show
      @corporate_client = CorporateClient.find(params[:id])
      render json: @corporate_client
    end
end
