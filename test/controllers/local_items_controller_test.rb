require "test_helper"

class LocalItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @local_item = local_items(:one)
  end

  test "should get index" do
    get local_items_url
    assert_response :success
  end

  test "should get new" do
    get new_local_item_url
    assert_response :success
  end

  test "should create local_item" do
    assert_difference("LocalItem.count") do
      post local_items_url, params: { local_item: { list_id: @local_item.list_id, livro_id: @local_item.livro_id } }
    end

    assert_redirected_to local_item_url(LocalItem.last)
  end

  test "should show local_item" do
    get local_item_url(@local_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_local_item_url(@local_item)
    assert_response :success
  end

  test "should update local_item" do
    patch local_item_url(@local_item), params: { local_item: { list_id: @local_item.list_id, livro_id: @local_item.livro_id } }
    assert_redirected_to local_item_url(@local_item)
  end

  test "should destroy local_item" do
    assert_difference("LocalItem.count", -1) do
      delete local_item_url(@local_item)
    end

    assert_redirected_to local_items_url
  end
end
