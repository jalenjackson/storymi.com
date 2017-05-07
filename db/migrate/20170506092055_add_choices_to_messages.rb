class AddChoicesToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :choice1, :string
    add_column :messages, :choice2, :string
  end
end
