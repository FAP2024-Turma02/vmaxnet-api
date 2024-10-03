class PhysicalClientsController < ApplicationController
    def index
      @physical_clients = PhysicalClient.all
      render json: @physical_clients
    end
  
    def show
      @physical_client = PhysicalClient.find(params[:id])
      render json: @physical_client
    end
  end
  