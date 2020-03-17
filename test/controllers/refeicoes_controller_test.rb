require 'test_helper'

class RefeicoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @refeicao = refeicoes(:one)
  end

  test "should get index" do
    get refeicoes_url
    assert_response :success
  end

  test "should get new" do
    get new_refeicao_url
    assert_response :success
  end

  test "should create refeicao" do
    assert_difference('Refeicao.count') do
      post refeicoes_url, params: { refeicao: { descricao: @refeicao.descricao, dieta_id: @refeicao.dieta_id, horario: @refeicao.horario, trefeicao_id: @refeicao.trefeicao_id } }
    end

    assert_redirected_to refeicao_url(Refeicao.last)
  end

  test "should show refeicao" do
    get refeicao_url(@refeicao)
    assert_response :success
  end

  test "should get edit" do
    get edit_refeicao_url(@refeicao)
    assert_response :success
  end

  test "should update refeicao" do
    patch refeicao_url(@refeicao), params: { refeicao: { descricao: @refeicao.descricao, dieta_id: @refeicao.dieta_id, horario: @refeicao.horario, trefeicao_id: @refeicao.trefeicao_id } }
    assert_redirected_to refeicao_url(@refeicao)
  end

  test "should destroy refeicao" do
    assert_difference('Refeicao.count', -1) do
      delete refeicao_url(@refeicao)
    end

    assert_redirected_to refeicoes_url
  end
end
