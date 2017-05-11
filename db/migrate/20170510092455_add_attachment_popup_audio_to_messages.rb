class AddAttachmentPopupAudioToMessages < ActiveRecord::Migration
  def self.up
    change_table :messages do |t|
      t.attachment :popup_audio
    end
  end

  def self.down
    remove_attachment :messages, :popup_audio
  end
end
