require "application_system_test_case"

class StuffsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit stuffs_url

    assert_selector "h1", text: "Stuff"
  end

  test "visit the index and add stuff" do
    visit stuffs_url

    click_on "New Stuff"

    fill_in "Title", with: "This. Is. Sparta!"
    fill_in "Body", with: "AHHHHHHHHHHHHHHH!!!!!!"

    click_on "Create Stuff"

    assert_text "This. Is."
  end

  
end
