class RemoveColumnChoice1FromMessages < ActiveRecord::Migration[5.0]
  def change
    remove_column :messages, :choice1
    remove_column :messages, :choice2
  end
end
