require 'test_helper'

class VisitorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visitor = visitors(:one)
  end

  test "should get index" do
    get visitors_url
    assert_response :success
  end

  test "should get new" do
    get new_visitor_url
    assert_response :success
  end

  test "should create visitor" do
    assert_difference('Visitor.count') do
      post visitors_url, params: { visitor: { attendant: @visitor.attendant, cpf: @visitor.cpf, name: @visitor.name, phone: @visitor.phone, sector: @visitor.sector, usersector: @visitor.usersector } }
    end

    assert_redirected_to visitor_url(Visitor.last)
  end

  test "should show visitor" do
    get visitor_url(@visitor)
    assert_response :success
  end

  test "should get edit" do
    get edit_visitor_url(@visitor)
    assert_response :success
  end

  test "should update visitor" do
    patch visitor_url(@visitor), params: { visitor: { attendant: @visitor.attendant, cpf: @visitor.cpf, name: @visitor.name, phone: @visitor.phone, sector: @visitor.sector, usersector: @visitor.usersector } }
    assert_redirected_to visitor_url(@visitor)
  end

  test "should destroy visitor" do
    assert_difference('Visitor.count', -1) do
      delete visitor_url(@visitor)
    end

    assert_redirected_to visitors_url
  end
end
