class AddDisplayNameToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :display_name, :string
  end
end
