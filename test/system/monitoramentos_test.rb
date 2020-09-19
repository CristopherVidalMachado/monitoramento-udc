require "application_system_test_case"

class MonitoramentosTest < ApplicationSystemTestCase
  setup do
    @monitoramento = monitoramentos(:one)
  end

  test "visiting the index" do
    visit monitoramentos_url
    assert_selector "h1", text: "Monitoramentos"
  end

  test "creating a Monitoramento" do
    visit monitoramentos_url
    click_on "New Monitoramento"

    fill_in "Condutividade", with: @monitoramento.condutividade
    fill_in "Localidade", with: @monitoramento.localidade_id
    fill_in "Ph", with: @monitoramento.ph
    fill_in "Temperatura", with: @monitoramento.temperatura
    fill_in "Turbidez", with: @monitoramento.turbidez
    click_on "Create Monitoramento"

    assert_text "Monitoramento was successfully created"
    click_on "Back"
  end

  test "updating a Monitoramento" do
    visit monitoramentos_url
    click_on "Edit", match: :first

    fill_in "Condutividade", with: @monitoramento.condutividade
    fill_in "Localidade", with: @monitoramento.localidade_id
    fill_in "Ph", with: @monitoramento.ph
    fill_in "Temperatura", with: @monitoramento.temperatura
    fill_in "Turbidez", with: @monitoramento.turbidez
    click_on "Update Monitoramento"

    assert_text "Monitoramento was successfully updated"
    click_on "Back"
  end

  test "destroying a Monitoramento" do
    visit monitoramentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Monitoramento was successfully destroyed"
  end
end
