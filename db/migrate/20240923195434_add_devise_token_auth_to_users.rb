class AddDeviseTokenAuthToUsers < ActiveRecord::Migration[7.0]
  def change
    change_table(:users) do |t|
      ## Required
      t.string :provider, null: false, default: 'email'
      t.string :uid, null: false, default: ''

      ## Tokens
      t.text :tokens
    end

    # Para melhorar a performance nas consultas com `provider` e `uid`
    add_index :users, %i[uid provider], unique: true
  end
end
