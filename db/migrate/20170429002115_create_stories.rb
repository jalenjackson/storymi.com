class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|

      t.string :title
      t.string :synopsis
      t.string :texter
      t.string :reciever
      t.integer :count
      t.timestamps
    end
  end
end
