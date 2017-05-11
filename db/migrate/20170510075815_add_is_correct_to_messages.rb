class AddIsCorrectToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :is_correct, :boolean
  end
end
