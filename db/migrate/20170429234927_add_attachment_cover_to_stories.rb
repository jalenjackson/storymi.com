class AddAttachmentCoverToStories < ActiveRecord::Migration[5.0]
  def self.up
    change_table :stories do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :stories, :cover
  end
end
