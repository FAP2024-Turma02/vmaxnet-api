class EnderecosController < ApplicationController
    def index
      @enderecos = Endereco.all
      render json: @enderecos
    end
  
    def show
      @endereco = Endereco.find(params[:id])
      render json: @endereco
    end
end
  
