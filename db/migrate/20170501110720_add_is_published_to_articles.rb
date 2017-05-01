class AddIsPublishedToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :ispublished, :boolean
  end
end
