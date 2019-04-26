require 'test_helper'

class StockingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stocking = stockings(:one)
  end

  test "should get index" do
    get stockings_url
    assert_response :success
  end

  test "should get new" do
    get new_stocking_url
    assert_response :success
  end

  test "should create stocking" do
    assert_difference('Stocking.count') do
      post stockings_url, params: { stocking: { balance: @stocking.balance, entry: @stocking.entry, numbering_id: @stocking.numbering_id, out: @stocking.out, product_id: @stocking.product_id } }
    end

    assert_redirected_to stocking_url(Stocking.last)
  end

  test "should show stocking" do
    get stocking_url(@stocking)
    assert_response :success
  end

  test "should get edit" do
    get edit_stocking_url(@stocking)
    assert_response :success
  end

  test "should update stocking" do
    patch stocking_url(@stocking), params: { stocking: { balance: @stocking.balance, entry: @stocking.entry, numbering_id: @stocking.numbering_id, out: @stocking.out, product_id: @stocking.product_id } }
    assert_redirected_to stocking_url(@stocking)
  end

  test "should destroy stocking" do
    assert_difference('Stocking.count', -1) do
      delete stocking_url(@stocking)
    end

    assert_redirected_to stockings_url
  end
end
