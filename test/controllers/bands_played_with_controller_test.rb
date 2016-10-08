require 'test_helper'

class BandsPlayedWithControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bands_played_with_index_url
    assert_response :success
  end

  test "should get show" do
    get bands_played_with_show_url
    assert_response :success
  end

  test "should get new" do
    get bands_played_with_new_url
    assert_response :success
  end

  test "should get created" do
    get bands_played_with_created_url
    assert_response :success
  end

  test "should get edit" do
    get bands_played_with_edit_url
    assert_response :success
  end

  test "should get update" do
    get bands_played_with_update_url
    assert_response :success
  end

end
