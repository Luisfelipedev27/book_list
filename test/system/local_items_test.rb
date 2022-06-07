require "application_system_test_case"

class LocalItemsTest < ApplicationSystemTestCase
  setup do
    @local_item = local_items(:one)
  end

  test "visiting the index" do
    visit local_items_url
    assert_selector "h1", text: "Local items"
  end

  test "should create local item" do
    visit local_items_url
    click_on "New local item"

    fill_in "List", with: @local_item.list_id
    fill_in "Livro", with: @local_item.livro_id
    click_on "Create Local item"

    assert_text "Local item was successfully created"
    click_on "Back"
  end

  test "should update Local item" do
    visit local_item_url(@local_item)
    click_on "Edit this local item", match: :first

    fill_in "List", with: @local_item.list_id
    fill_in "Livro", with: @local_item.livro_id
    click_on "Update Local item"

    assert_text "Local item was successfully updated"
    click_on "Back"
  end

  test "should destroy Local item" do
    visit local_item_url(@local_item)
    click_on "Destroy this local item", match: :first

    assert_text "Local item was successfully destroyed"
  end
end
