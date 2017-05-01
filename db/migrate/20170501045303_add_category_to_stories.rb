class AddCategoryToStories < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :category, :string
  end

end
