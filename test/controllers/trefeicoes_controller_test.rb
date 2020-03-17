require 'test_helper'

class TrefeicoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trefeicao = trefeicoes(:one)
  end

  test "should get index" do
    get trefeicoes_url
    assert_response :success
  end

  test "should get new" do
    get new_trefeicao_url
    assert_response :success
  end

  test "should create trefeicao" do
    assert_difference('Trefeicao.count') do
      post trefeicoes_url, params: { trefeicao: { nome: @trefeicao.nome } }
    end

    assert_redirected_to trefeicao_url(Trefeicao.last)
  end

  test "should show trefeicao" do
    get trefeicao_url(@trefeicao)
    assert_response :success
  end

  test "should get edit" do
    get edit_trefeicao_url(@trefeicao)
    assert_response :success
  end

  test "should update trefeicao" do
    patch trefeicao_url(@trefeicao), params: { trefeicao: { nome: @trefeicao.nome } }
    assert_redirected_to trefeicao_url(@trefeicao)
  end

  test "should destroy trefeicao" do
    assert_difference('Trefeicao.count', -1) do
      delete trefeicao_url(@trefeicao)
    end

    assert_redirected_to trefeicoes_url
  end
end
