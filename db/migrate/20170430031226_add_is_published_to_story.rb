class AddIsPublishedToStory < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :ispublished, :boolean
  end
end
