require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get nuevo" do
    get :nuevo
    assert_response :success
  end

  test "should get borrar" do
    get :borrar
    assert_response :success
  end

  test "should get modificar" do
    get :modificar
    assert_response :success
  end

  test "should get listar" do
    get :listar
    assert_response :success
  end

end
