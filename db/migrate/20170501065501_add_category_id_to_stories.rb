class AddCategoryIdToStories < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :category_id, :integer
    add_index :stories, :category_id
  end
end
