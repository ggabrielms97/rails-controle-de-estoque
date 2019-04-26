class Product < ApplicationRecord
	default_scope { order(name: 'asc') }
	belongs_to :category, optional: true
	belongs_to :brand, optional: true
end
