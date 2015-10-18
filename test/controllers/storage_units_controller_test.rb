require 'test_helper'

class StorageUnitsControllerTest < ActionController::TestCase
  setup do
    @storage_unit = storage_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storage_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storage_unit" do
    assert_difference('StorageUnit.count') do
      post :create, storage_unit: { annual_rate: @storage_unit.annual_rate, description: @storage_unit.description, height: @storage_unit.height, length: @storage_unit.length, monthly_rate: @storage_unit.monthly_rate, name: @storage_unit.name, renter_id: @storage_unit.renter_id, width: @storage_unit.width }
    end

    assert_redirected_to storage_unit_path(assigns(:storage_unit))
  end

  test "should show storage_unit" do
    get :show, id: @storage_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @storage_unit
    assert_response :success
  end

  test "should update storage_unit" do
    patch :update, id: @storage_unit, storage_unit: { annual_rate: @storage_unit.annual_rate, description: @storage_unit.description, height: @storage_unit.height, length: @storage_unit.length, monthly_rate: @storage_unit.monthly_rate, name: @storage_unit.name, renter_id: @storage_unit.renter_id, width: @storage_unit.width }
    assert_redirected_to storage_unit_path(assigns(:storage_unit))
  end

  test "should destroy storage_unit" do
    assert_difference('StorageUnit.count', -1) do
      delete :destroy, id: @storage_unit
    end

    assert_redirected_to storage_units_path
  end
end
