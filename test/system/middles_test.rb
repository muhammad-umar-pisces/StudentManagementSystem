require "application_system_test_case"

class MiddlesTest < ApplicationSystemTestCase
  setup do
    @middle = middles(:one)
  end

  test "visiting the index" do
    visit middles_url
    assert_selector "h1", text: "Middles"
  end

  test "creating a Middle" do
    visit middles_url
    click_on "New Middle"

    fill_in "Arabic", with: @middle.Arabic
    fill_in "English", with: @middle.English
    fill_in "Islamiat", with: @middle.Islamiat
    fill_in "Math", with: @middle.Math
    fill_in "Pak studies", with: @middle.Pak_studies
    fill_in "Science", with: @middle.Science
    fill_in "Urdu", with: @middle.Urdu
    click_on "Create Middle"

    assert_text "Middle was successfully created"
    click_on "Back"
  end

  test "updating a Middle" do
    visit middles_url
    click_on "Edit", match: :first

    fill_in "Arabic", with: @middle.Arabic
    fill_in "English", with: @middle.English
    fill_in "Islamiat", with: @middle.Islamiat
    fill_in "Math", with: @middle.Math
    fill_in "Pak studies", with: @middle.Pak_studies
    fill_in "Science", with: @middle.Science
    fill_in "Urdu", with: @middle.Urdu
    click_on "Update Middle"

    assert_text "Middle was successfully updated"
    click_on "Back"
  end

  test "destroying a Middle" do
    visit middles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Middle was successfully destroyed"
  end
end
