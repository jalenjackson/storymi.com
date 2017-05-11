class AddMessagesToMessage < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :end_message, :string
  end
end
