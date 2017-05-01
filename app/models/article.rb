class Article < ApplicationRecord

  belongs_to :user
  validates :title, presence: true
  validates :synopsis, presence: true
  is_impressionable
  belongs_to :category



  has_attached_file :cover, styles: { medium: "400x400>", large: "2000x2000>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/


end
