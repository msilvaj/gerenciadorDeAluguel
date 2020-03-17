require "application_system_test_case"

class TrefeicoesTest < ApplicationSystemTestCase
  setup do
    @trefeicao = trefeicoes(:one)
  end

  test "visiting the index" do
    visit trefeicoes_url
    assert_selector "h1", text: "Trefeicoes"
  end

  test "creating a Trefeicao" do
    visit trefeicoes_url
    click_on "New Trefeicao"

    fill_in "Nome", with: @trefeicao.nome
    click_on "Create Trefeicao"

    assert_text "Trefeicao was successfully created"
    click_on "Back"
  end

  test "updating a Trefeicao" do
    visit trefeicoes_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @trefeicao.nome
    click_on "Update Trefeicao"

    assert_text "Trefeicao was successfully updated"
    click_on "Back"
  end

  test "destroying a Trefeicao" do
    visit trefeicoes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trefeicao was successfully destroyed"
  end
end
