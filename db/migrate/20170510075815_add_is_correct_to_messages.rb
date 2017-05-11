class AddIsCorrectToMessages < ActiveRecord::Migration[5.0]
  def change
    if column_exists? :messages, :is_correct
      remove_column :messages, :is_correct
    end

    add_column :messages, :is_correct, :boolean
  end
end
