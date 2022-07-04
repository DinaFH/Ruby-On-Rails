class Admin < ApplicationRecord
  has_many :products, dependent: :destroy

  def name_with_initial
    "#{name}"
  end
end
