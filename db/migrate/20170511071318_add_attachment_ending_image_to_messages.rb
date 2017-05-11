class AddAttachmentEndingImageToMessages < ActiveRecord::Migration
  def self.up
    change_table :messages do |t|
      t.attachment :ending_image
    end
  end

  def self.down
    remove_attachment :messages, :ending_image
  end
end
