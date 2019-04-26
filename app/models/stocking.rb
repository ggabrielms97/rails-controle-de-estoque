class Stocking < ApplicationRecord
	default_scope { order(id: 'desc') }
	has_many :stocking_products

  def self.update_stock(params, id)
  	StockingProduct.create(:sale_product_id => id.to_i, :product_id => params[:product_id].to_i, :numbering_id => params[:number].to_i, :out => params[:quantity].to_i, :entry => '0'.to_i)
  	# Stocking.create(:product_id => params[:product_id].to_i, :numbering_id => params[:numbering].to_i, :out => params[:quantity], :entry => 0)
  end
end
