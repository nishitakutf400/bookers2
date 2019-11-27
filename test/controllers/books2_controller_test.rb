require 'test_helper'

class Books2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get books2_index_url
    assert_response :success
  end

  test "should get show" do
    get books2_show_url
    assert_response :success
  end

  test "should get new" do
    get books2_new_url
    assert_response :success
  end

  test "should get edit" do
    get books2_edit_url
    assert_response :success
  end

end
