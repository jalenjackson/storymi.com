class AddAttachmentChoiceImg1ToMessages < ActiveRecord::Migration
  def self.up
    change_table :messages do |t|
      t.attachment :choice_img1
    end
  end

  def self.down
    remove_attachment :messages, :choice_img1
  end
end
