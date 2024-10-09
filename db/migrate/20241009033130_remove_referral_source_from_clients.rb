class RemoveReferralSourceFromClients < ActiveRecord::Migration[6.1]
  def change
    remove_column :clients, :referral_source, :string if column_exists?(:clients, :referral_source)
  end
end
