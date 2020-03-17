require "application_system_test_case"

class RefeicoesTest < ApplicationSystemTestCase
  setup do
    @refeicao = refeicoes(:one)
  end

  test "visiting the index" do
    visit refeicoes_url
    assert_selector "h1", text: "Refeicoes"
  end

  test "creating a Refeicao" do
    visit refeicoes_url
    click_on "New Refeicao"

    fill_in "Descricao", with: @refeicao.descricao
    fill_in "Dieta", with: @refeicao.dieta_id
    fill_in "Horario", with: @refeicao.horario
    fill_in "Trefeicao", with: @refeicao.trefeicao_id
    click_on "Create Refeicao"

    assert_text "Refeicao was successfully created"
    click_on "Back"
  end

  test "updating a Refeicao" do
    visit refeicoes_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @refeicao.descricao
    fill_in "Dieta", with: @refeicao.dieta_id
    fill_in "Horario", with: @refeicao.horario
    fill_in "Trefeicao", with: @refeicao.trefeicao_id
    click_on "Update Refeicao"

    assert_text "Refeicao was successfully updated"
    click_on "Back"
  end

  test "destroying a Refeicao" do
    visit refeicoes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Refeicao was successfully destroyed"
  end
end
