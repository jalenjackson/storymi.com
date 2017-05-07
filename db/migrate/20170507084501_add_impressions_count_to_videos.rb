class AddImpressionsCountToVideos < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :impressions_count, :integer, default: 0

  end
end
