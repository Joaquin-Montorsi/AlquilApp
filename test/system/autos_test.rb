require "application_system_test_case"

class AutosTest < ApplicationSystemTestCase
  setup do
    @auto = autos(:one)
  end

  test "visiting the index" do
    visit autos_url
    assert_selector "h1", text: "Autos"
  end

  test "should create auto" do
    visit autos_url
    click_on "New auto"

    fill_in "Cant combustible", with: @auto.cant_combustible
    fill_in "Color", with: @auto.color
    check "Encendido" if @auto.encendido
    fill_in "Estado", with: @auto.estado
    fill_in "Img url", with: @auto.img_url
    fill_in "Marca", with: @auto.marca
    fill_in "Modelo", with: @auto.modelo
    fill_in "Nro asientos", with: @auto.nro_asientos
    fill_in "Nro puertas", with: @auto.nro_puertas
    fill_in "Patente", with: @auto.patente
    fill_in "Posicion", with: @auto.posicion_id
    fill_in "User", with: @auto.user_id
    fill_in "Velocidad", with: @auto.velocidad
    click_on "Create Auto"

    assert_text "Auto was successfully created"
    click_on "Back"
  end

  test "should update Auto" do
    visit auto_url(@auto)
    click_on "Edit this auto", match: :first

    fill_in "Cant combustible", with: @auto.cant_combustible
    fill_in "Color", with: @auto.color
    check "Encendido" if @auto.encendido
    fill_in "Estado", with: @auto.estado
    fill_in "Img url", with: @auto.img_url
    fill_in "Marca", with: @auto.marca
    fill_in "Modelo", with: @auto.modelo
    fill_in "Nro asientos", with: @auto.nro_asientos
    fill_in "Nro puertas", with: @auto.nro_puertas
    fill_in "Patente", with: @auto.patente
    fill_in "Posicion", with: @auto.posicion_id
    fill_in "User", with: @auto.user_id
    fill_in "Velocidad", with: @auto.velocidad
    click_on "Update Auto"

    assert_text "Auto was successfully updated"
    click_on "Back"
  end

  test "should destroy Auto" do
    visit auto_url(@auto)
    click_on "Destroy this auto", match: :first

    assert_text "Auto was successfully destroyed"
  end
end
