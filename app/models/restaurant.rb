class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :category, inclusion: { in: ["Chinese", "Italian", "Japanese", "French", "Belgian"] }
  validates :address, presence: true
  validates :phone_number, uniqueness: true, presence: true
end
