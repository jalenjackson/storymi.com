class AddAttachmentImage2ToMessages < ActiveRecord::Migration
  def self.up
    change_table :messages do |t|
      t.attachment :image2
    end
  end

  def self.down
    remove_attachment :messages, :image2
  end
end
