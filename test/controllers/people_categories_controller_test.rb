require 'test_helper'

class PeopleCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @people_category = people_categories(:one)
  end

  test "should get index" do
    get people_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_people_category_url
    assert_response :success
  end

  test "should create people_category" do
    assert_difference('PeopleCategory.count') do
      post people_categories_url, params: { people_category: { name: @people_category.name, status: @people_category.status } }
    end

    assert_redirected_to people_category_url(PeopleCategory.last)
  end

  test "should show people_category" do
    get people_category_url(@people_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_people_category_url(@people_category)
    assert_response :success
  end

  test "should update people_category" do
    patch people_category_url(@people_category), params: { people_category: { name: @people_category.name, status: @people_category.status } }
    assert_redirected_to people_category_url(@people_category)
  end

  test "should destroy people_category" do
    assert_difference('PeopleCategory.count', -1) do
      delete people_category_url(@people_category)
    end

    assert_redirected_to people_categories_url
  end
end
