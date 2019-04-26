class Sale < ApplicationRecord
  belongs_to :client, optional: true
  has_many :sale_products, dependent: :destroy
end
