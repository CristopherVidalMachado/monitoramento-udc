require 'test_helper'

class ControladorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @controlador = controladors(:one)
  end

  test "should get index" do
    get controladors_url
    assert_response :success
  end

  test "should get new" do
    get new_controlador_url
    assert_response :success
  end

  test "should create controlador" do
    assert_difference('Controlador.count') do
      post controladors_url, params: { controlador: { flag_ativo: @controlador.flag_ativo, mac: @controlador.mac } }
    end

    assert_redirected_to controlador_url(Controlador.last)
  end

  test "should show controlador" do
    get controlador_url(@controlador)
    assert_response :success
  end

  test "should get edit" do
    get edit_controlador_url(@controlador)
    assert_response :success
  end

  test "should update controlador" do
    patch controlador_url(@controlador), params: { controlador: { flag_ativo: @controlador.flag_ativo, mac: @controlador.mac } }
    assert_redirected_to controlador_url(@controlador)
  end

  test "should destroy controlador" do
    assert_difference('Controlador.count', -1) do
      delete controlador_url(@controlador)
    end

    assert_redirected_to controladors_url
  end
end
