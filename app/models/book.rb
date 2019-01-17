class Book < ApplicationRecord
  has_many :users_books
  has_many :users, through: :users_books
  belongs_to :genre

  validates_uniqueness_of :title
  validates_presence_of :title
  validates_presence_of :author
end
