class AddEndingToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :ending, :string
  end
end
