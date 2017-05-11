class AddNewChoiceToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :is_correct2 , :boolean
  end
end
