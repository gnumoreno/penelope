class Book < ApplicationRecord
  belongs_to :user
  validates :title,  presence: true, length: { maximum: 140 }
  validates :pages, presence: true
end
