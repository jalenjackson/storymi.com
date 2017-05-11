class AddAttachmentEndingAudioToMessages < ActiveRecord::Migration
  def self.up
    change_table :messages do |t|
      t.attachment :ending_audio
    end
  end

  def self.down
    remove_attachment :messages, :ending_audio
  end
end
