require 'test_helper'

class AdquisicionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adquisicione = adquisiciones(:one)
  end

  test "should get index" do
    get adquisiciones_url
    assert_response :success
  end

  test "should get new" do
    get new_adquisicione_url
    assert_response :success
  end

  test "should create adquisicione" do
    assert_difference('Adquisicione.count') do
      post adquisiciones_url, params: { adquisicione: { cliente: @adquisicione.cliente, fecha_compra: @adquisicione.fecha_compra, monto: @adquisicione.monto } }
    end

    assert_redirected_to adquisicione_url(Adquisicione.last)
  end

  test "should show adquisicione" do
    get adquisicione_url(@adquisicione)
    assert_response :success
  end

  test "should get edit" do
    get edit_adquisicione_url(@adquisicione)
    assert_response :success
  end

  test "should update adquisicione" do
    patch adquisicione_url(@adquisicione), params: { adquisicione: { cliente: @adquisicione.cliente, fecha_compra: @adquisicione.fecha_compra, monto: @adquisicione.monto } }
    assert_redirected_to adquisicione_url(@adquisicione)
  end

  test "should destroy adquisicione" do
    assert_difference('Adquisicione.count', -1) do
      delete adquisicione_url(@adquisicione)
    end

    assert_redirected_to adquisiciones_url
  end
end
