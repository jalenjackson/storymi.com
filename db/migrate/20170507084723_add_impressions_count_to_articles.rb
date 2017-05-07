class AddImpressionsCountToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :impressions_count, :integer, default: 0

  end
end
