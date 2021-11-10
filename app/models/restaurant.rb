class Restaurant < ApplicationRecord
  validates :name, :phone_number, :address, :category, presence: true
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: ["chinese",
   "italian", "japanese", "french", "belgian"] }
end
