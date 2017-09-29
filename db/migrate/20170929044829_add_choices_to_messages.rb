class AddChoicesToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :first_choice, :string
    add_column :messages, :second_choice, :string
  end
end
