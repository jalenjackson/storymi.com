class AddAttachmentMp3ToMessages < ActiveRecord::Migration
  def self.up
    change_table :messages do |t|
      t.attachment :mp3
    end
  end

  def self.down
    remove_attachment :messages, :mp3
  end
end
