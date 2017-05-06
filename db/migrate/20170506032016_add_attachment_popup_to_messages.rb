class AddAttachmentPopupToMessages < ActiveRecord::Migration
  def self.up
    change_table :messages do |t|
      t.attachment :popup
    end
  end

  def self.down
    remove_attachment :messages, :popup
  end
end
