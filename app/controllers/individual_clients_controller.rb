class IndividualClientsController < ApplicationController
    def index
      @individual_clients = IndividualClient.all
      render json: @individual_clients
    end
  
    def show
      @individual_client = IndividualClient.find(params[:id])
      render json: @individual_client
    end
end
