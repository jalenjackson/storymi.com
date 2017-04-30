class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :story
      t.string :message1
      t.string :message2
      t.timestamps
    end
  end
end
