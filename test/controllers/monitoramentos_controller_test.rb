require 'test_helper'

class MonitoramentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monitoramento = monitoramentos(:one)
  end

  test "should get index" do
    get monitoramentos_url
    assert_response :success
  end

  test "should get new" do
    get new_monitoramento_url
    assert_response :success
  end

  test "should create monitoramento" do
    assert_difference('Monitoramento.count') do
      post monitoramentos_url, params: { monitoramento: { condutividade: @monitoramento.condutividade, localidade_id: @monitoramento.localidade_id, ph: @monitoramento.ph, temperatura: @monitoramento.temperatura, turbidez: @monitoramento.turbidez } }
    end

    assert_redirected_to monitoramento_url(Monitoramento.last)
  end

  test "should show monitoramento" do
    get monitoramento_url(@monitoramento)
    assert_response :success
  end

  test "should get edit" do
    get edit_monitoramento_url(@monitoramento)
    assert_response :success
  end

  test "should update monitoramento" do
    patch monitoramento_url(@monitoramento), params: { monitoramento: { condutividade: @monitoramento.condutividade, localidade_id: @monitoramento.localidade_id, ph: @monitoramento.ph, temperatura: @monitoramento.temperatura, turbidez: @monitoramento.turbidez } }
    assert_redirected_to monitoramento_url(@monitoramento)
  end

  test "should destroy monitoramento" do
    assert_difference('Monitoramento.count', -1) do
      delete monitoramento_url(@monitoramento)
    end

    assert_redirected_to monitoramentos_url
  end
end
