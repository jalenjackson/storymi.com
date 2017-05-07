class AddLeftOrRightToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :left, :boolean
    add_column :messages, :right, :boolean
  end
end
