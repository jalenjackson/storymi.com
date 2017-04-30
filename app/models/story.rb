class Story < ApplicationRecord
  has_many :messages

  belongs_to :user
  has_attached_file :image, styles: { medium: "300x300>", large: "2000x2000>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/



  has_attached_file :cover, styles: { medium: "500x500>", large: "2000x2000>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/


  has_attached_file :video,
                    :styles => {:thumb => ["400x400#", :jpg]}
  validates_attachment_content_type :video, content_type: /\Avideo/


  validates :title, presence: true
  validates :synopsis, presence: true
  validates :texter, presence: true
  validates :reciever, presence: true




end
