require 'test_helper'

class ContractsControllerTest < ActionController::TestCase
  setup do
    @contract = contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contract" do
    assert_difference('Contract.count') do
      post :create, contract: { billing_period: @contract.billing_period, billing_rate: @contract.billing_rate, end_date: @contract.end_date, notes: @contract.notes, renter_id: @contract.renter_id, start_date: @contract.start_date, storage_unit_id: @contract.storage_unit_id }
    end

    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should show contract" do
    get :show, id: @contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contract
    assert_response :success
  end

  test "should update contract" do
    patch :update, id: @contract, contract: { billing_period: @contract.billing_period, billing_rate: @contract.billing_rate, end_date: @contract.end_date, notes: @contract.notes, renter_id: @contract.renter_id, start_date: @contract.start_date, storage_unit_id: @contract.storage_unit_id }
    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should destroy contract" do
    assert_difference('Contract.count', -1) do
      delete :destroy, id: @contract
    end

    assert_redirected_to contracts_path
  end
end
