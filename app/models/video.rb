class Video < ApplicationRecord
  is_impressionable
  acts_as_votable
  belongs_to :user



  # Paperclip attachments declaration
  has_attached_file :mp4,
                    :styles => {:thumb => ["400x400#", :jpg]}
  validates_attachment_content_type :mp4, content_type: /\Avideo/


end
