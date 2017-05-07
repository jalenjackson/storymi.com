class AddAttachmentChoiceImageToMessages < ActiveRecord::Migration
  def self.up
    change_table :messages do |t|
      t.attachment :choice_image
    end
  end

  def self.down
    remove_attachment :messages, :choice_image
  end
end
