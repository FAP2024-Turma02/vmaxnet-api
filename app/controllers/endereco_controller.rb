class EnderecoController < ApplicationController

    def index
        enderecos = Endereco.all
        render json: enderecos, status: :ok
    end

end
