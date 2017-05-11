class AddAttachmentChoicePopupToMessages < ActiveRecord::Migration
  def self.up
    change_table :messages do |t|
      t.attachment :choice_popup
    end
  end

  def self.down
    remove_attachment :messages, :choice_popup
  end
end
