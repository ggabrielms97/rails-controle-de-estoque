require 'test_helper'

class NumberingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @numbering = numberings(:one)
  end

  test "should get index" do
    get numberings_url
    assert_response :success
  end

  test "should get new" do
    get new_numbering_url
    assert_response :success
  end

  test "should create numbering" do
    assert_difference('Numbering.count') do
      post numberings_url, params: { numbering: { number: @numbering.number } }
    end

    assert_redirected_to numbering_url(Numbering.last)
  end

  test "should show numbering" do
    get numbering_url(@numbering)
    assert_response :success
  end

  test "should get edit" do
    get edit_numbering_url(@numbering)
    assert_response :success
  end

  test "should update numbering" do
    patch numbering_url(@numbering), params: { numbering: { number: @numbering.number } }
    assert_redirected_to numbering_url(@numbering)
  end

  test "should destroy numbering" do
    assert_difference('Numbering.count', -1) do
      delete numbering_url(@numbering)
    end

    assert_redirected_to numberings_url
  end
end
