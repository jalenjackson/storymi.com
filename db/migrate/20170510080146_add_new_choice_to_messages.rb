class AddNewChoiceToMessages < ActiveRecord::Migration[5.0]
  def change
    if column_exists? :messages, :is_correct2
      remove_column :messages, :is_correct2
    end

    add_column :messages, :is_correct2 , :boolean
  end
end
