class Postulation < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :description, presence: true, length: { in: 6..200 }
end
