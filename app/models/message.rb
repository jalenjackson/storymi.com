class Message < ApplicationRecord
  belongs_to :story



  has_attached_file :image, styles: { medium: "400x400>", large: "2000x2000>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


  has_attached_file :image2, styles: { medium: "400x400>", large: "2000x2000>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image2, content_type: /\Aimage\/.*\z/



  has_attached_file :popup, styles: { medium: "1000x1000>", large: "2000x2000>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :popup, content_type: /\Aimage\/.*\z/

  has_attached_file :choice_image, styles: { medium: "1000x1000>", large: "2000x2000>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :choice_image, content_type: /\Aimage\/.*\z/


  has_attached_file :mp3
  validates_attachment :mp3, :content_type => {:content_type => ["audio/mpeg", "audio/mp3", "audio/wav", "audio/ogg"]}, :file_name => {:matches => [/mp3\Z/]}

end
