require "application_system_test_case"

class ControladorsTest < ApplicationSystemTestCase
  setup do
    @controlador = controladors(:one)
  end

  test "visiting the index" do
    visit controladors_url
    assert_selector "h1", text: "Controladors"
  end

  test "creating a Controlador" do
    visit controladors_url
    click_on "New Controlador"

    fill_in "Flag ativo", with: @controlador.flag_ativo
    fill_in "Mac", with: @controlador.mac
    click_on "Create Controlador"

    assert_text "Controlador was successfully created"
    click_on "Back"
  end

  test "updating a Controlador" do
    visit controladors_url
    click_on "Edit", match: :first

    fill_in "Flag ativo", with: @controlador.flag_ativo
    fill_in "Mac", with: @controlador.mac
    click_on "Update Controlador"

    assert_text "Controlador was successfully updated"
    click_on "Back"
  end

  test "destroying a Controlador" do
    visit controladors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Controlador was successfully destroyed"
  end
end
