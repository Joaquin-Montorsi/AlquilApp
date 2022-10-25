require "application_system_test_case"

class PosicionsTest < ApplicationSystemTestCase
  setup do
    @posicion = posicions(:one)
  end

  test "visiting the index" do
    visit posicions_url
    assert_selector "h1", text: "Posicions"
  end

  test "should create posicion" do
    visit posicions_url
    click_on "New posicion"

    fill_in "X", with: @posicion.x
    fill_in "Y", with: @posicion.y
    click_on "Create Posicion"

    assert_text "Posicion was successfully created"
    click_on "Back"
  end

  test "should update Posicion" do
    visit posicion_url(@posicion)
    click_on "Edit this posicion", match: :first

    fill_in "X", with: @posicion.x
    fill_in "Y", with: @posicion.y
    click_on "Update Posicion"

    assert_text "Posicion was successfully updated"
    click_on "Back"
  end

  test "should destroy Posicion" do
    visit posicion_url(@posicion)
    click_on "Destroy this posicion", match: :first

    assert_text "Posicion was successfully destroyed"
  end
end
