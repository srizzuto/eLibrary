class Book < ApplicationRecord
  belongs_to :category

  has_many :posts

  validates :title, presence: true
  validates :author, presence: true
  validates :editor, presence: true
  validates :category, presence: true
  
end
