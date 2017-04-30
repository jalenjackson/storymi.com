class Message < ApplicationRecord
  belongs_to :story



  has_attached_file :image, styles: { medium: "400x400>", large: "2000x2000>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


  has_attached_file :image2, styles: { medium: "400x400>", large: "2000x2000>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image2, content_type: /\Aimage\/.*\z/

end
