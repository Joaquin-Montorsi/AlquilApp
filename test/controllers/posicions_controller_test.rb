require "test_helper"

class PosicionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @posicion = posicions(:one)
  end

  test "should get index" do
    get posicions_url
    assert_response :success
  end

  test "should get new" do
    get new_posicion_url
    assert_response :success
  end

  test "should create posicion" do
    assert_difference("Posicion.count") do
      post posicions_url, params: { posicion: { x: @posicion.x, y: @posicion.y } }
    end

    assert_redirected_to posicion_url(Posicion.last)
  end

  test "should show posicion" do
    get posicion_url(@posicion)
    assert_response :success
  end

  test "should get edit" do
    get edit_posicion_url(@posicion)
    assert_response :success
  end

  test "should update posicion" do
    patch posicion_url(@posicion), params: { posicion: { x: @posicion.x, y: @posicion.y } }
    assert_redirected_to posicion_url(@posicion)
  end

  test "should destroy posicion" do
    assert_difference("Posicion.count", -1) do
      delete posicion_url(@posicion)
    end

    assert_redirected_to posicions_url
  end
end
