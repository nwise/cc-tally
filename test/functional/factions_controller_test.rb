require 'test_helper'

class FactionsControllerTest < ActionController::TestCase
  setup do
    @faction = factions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:factions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create faction" do
    assert_difference('Faction.count') do
      post :create, :faction => @faction.attributes
    end

    assert_redirected_to faction_path(assigns(:faction))
  end

  test "should show faction" do
    get :show, :id => @faction.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @faction.to_param
    assert_response :success
  end

  test "should update faction" do
    put :update, :id => @faction.to_param, :faction => @faction.attributes
    assert_redirected_to faction_path(assigns(:faction))
  end

  test "should destroy faction" do
    assert_difference('Faction.count', -1) do
      delete :destroy, :id => @faction.to_param
    end

    assert_redirected_to factions_path
  end
end
