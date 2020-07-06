require "application_system_test_case"

class roadworksTest < ApplicationSystemTestCase
  setup do
    @roadwork = roadworks(:one)
  end

  test "visiting the index" do
    visit roadworks_url
    assert_selector "h1", text: "roadworks"
  end

  test "creating a roadwork" do
    visit roadworks_url
    click_on "New roadwork"

    fill_in "Banner url", with: @roadwork.banner_url
    fill_in "Name", with: @roadwork.name
    click_on "Create roadwork"

    assert_text "roadwork was successfully created"
    click_on "Back"
  end

  test "updating a roadwork" do
    visit roadworks_url
    click_on "Edit", match: :first

    fill_in "Banner url", with: @roadwork.banner_url
    fill_in "Name", with: @roadwork.name
    click_on "Update roadwork"

    assert_text "roadwork was successfully updated"
    click_on "Back"
  end

  test "destroying a roadwork" do
    visit roadworks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "roadwork was successfully destroyed"
  end
end
