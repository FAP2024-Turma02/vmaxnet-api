class AddPhysicalClientToEnderecos < ActiveRecord::Migration[7.0]
  def change
    add_reference :enderecos, :physical_client, null: false, foreign_key: true
  end
end
