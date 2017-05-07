class AddImpressionsCountToStory < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :impressions_count, :integer, default: 0
  end
end
