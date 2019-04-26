class SaleProduct < ApplicationRecord
  belongs_to :sale
  belongs_to :product
  has_many :stocking_products, dependent: :destroy
end
