class Category < ApplicationRecord
  has_many :stories
  has_many :articles
end
