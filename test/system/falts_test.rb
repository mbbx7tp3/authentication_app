require "application_system_test_case"

class FaltsTest < ApplicationSystemTestCase
  setup do
    @falt = falts(:one)
  end

  test "visiting the index" do
    visit falts_url
    assert_selector "h1", text: "Falts"
  end

  test "creating a Falt" do
    visit falts_url
    click_on "New Falt"

    click_on "Create Falt"

    assert_text "Falt was successfully created"
    click_on "Back"
  end

  test "updating a Falt" do
    visit falts_url
    click_on "Edit", match: :first

    click_on "Update Falt"

    assert_text "Falt was successfully updated"
    click_on "Back"
  end

  test "destroying a Falt" do
    visit falts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Falt was successfully destroyed"
  end
end
