require 'test_helper'

class Clients::ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clients_items_index_url
    assert_response :success
  end

  test "should get show" do
    get clients_items_show_url
    assert_response :success
  end

end
