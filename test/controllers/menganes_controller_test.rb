require 'test_helper'

class MenganesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get menganes_show_url
    assert_response :success
  end

  test "should get index" do
    get menganes_index_url
    assert_response :success
  end

  test "should get new" do
    get menganes_new_url
    assert_response :success
  end

  test "should get create" do
    get menganes_create_url
    assert_response :success
  end

  test "should get edit" do
    get menganes_edit_url
    assert_response :success
  end

  test "should get confirm" do
    get menganes_confirm_url
    assert_response :success
  end

  test "should get update" do
    get menganes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get menganes_destroy_url
    assert_response :success
  end

end
