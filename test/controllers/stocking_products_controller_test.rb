require 'test_helper'

class StockingProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stocking_product = stocking_products(:one)
  end

  test "should get index" do
    get stocking_products_url
    assert_response :success
  end

  test "should get new" do
    get new_stocking_product_url
    assert_response :success
  end

  test "should create stocking_product" do
    assert_difference('StockingProduct.count') do
      post stocking_products_url, params: { stocking_product: { balance: @stocking_product.balance, entry: @stocking_product.entry, numbering_id: @stocking_product.numbering_id, out: @stocking_product.out, product_id: @stocking_product.product_id, sale_product_id: @stocking_product.sale_product_id, stocking_id: @stocking_product.stocking_id } }
    end

    assert_redirected_to stocking_product_url(StockingProduct.last)
  end

  test "should show stocking_product" do
    get stocking_product_url(@stocking_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_stocking_product_url(@stocking_product)
    assert_response :success
  end

  test "should update stocking_product" do
    patch stocking_product_url(@stocking_product), params: { stocking_product: { balance: @stocking_product.balance, entry: @stocking_product.entry, numbering_id: @stocking_product.numbering_id, out: @stocking_product.out, product_id: @stocking_product.product_id, sale_product_id: @stocking_product.sale_product_id, stocking_id: @stocking_product.stocking_id } }
    assert_redirected_to stocking_product_url(@stocking_product)
  end

  test "should destroy stocking_product" do
    assert_difference('StockingProduct.count', -1) do
      delete stocking_product_url(@stocking_product)
    end

    assert_redirected_to stocking_products_url
  end
end
