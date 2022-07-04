class Product < ApplicationRecord
  has_one_attached :image
  belongs_to :admin

  validates :name, presence: true
  validates :price, presence: true
  validates :image, presence: true
  validates :admin_id, presence: true
  validates :description, presence: true, length: { minimum: 10}
end
