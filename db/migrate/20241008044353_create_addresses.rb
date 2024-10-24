class CreateAddresses < ActiveRecord::Migration[7.0]
  def create_table
    create_table :addresses do |t|
      t.integer :address_type
      t.string :street_name
      t.string :reference
      t.string :zip_code
      t.string :city
      t.string :neighborhood
      t.string :address
      t.string :number
      t.string :complement
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
