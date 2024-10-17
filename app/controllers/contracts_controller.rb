class ContractsController < ApplicationController
    def index
      @contracts = Contract.all
      render json: @contracts
    end
  
    def show
      @contract = Contract.find(params[:id])
      render json: @contract
    rescue ActiveRecord::RecordNotFound
      render json: { error: 'Contract not found' }, status: :not_found
    end
  end
  