class StockingProduct < ApplicationRecord
  belongs_to :stocking, optional: true
  belongs_to :product
  belongs_to :numbering
  belongs_to :sale_product, optional: true
end
