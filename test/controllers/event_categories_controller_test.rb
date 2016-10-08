require 'test_helper'

class EventCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get event_categories_index_url
    assert_response :success
  end

  test "should get show" do
    get event_categories_show_url
    assert_response :success
  end

end
