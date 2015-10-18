require 'test_helper'

class RentersControllerTest < ActionController::TestCase
  setup do
    @renter = renters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:renters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create renter" do
    assert_difference('Renter.count') do
      post :create, renter: { address: @renter.address, city: @renter.city, company: @renter.company, email: @renter.email, fax: @renter.fax, first_name: @renter.first_name, last_name: @renter.last_name, phone: @renter.phone, state: @renter.state, zip: @renter.zip }
    end

    assert_redirected_to renter_path(assigns(:renter))
  end

  test "should show renter" do
    get :show, id: @renter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @renter
    assert_response :success
  end

  test "should update renter" do
    patch :update, id: @renter, renter: { address: @renter.address, city: @renter.city, company: @renter.company, email: @renter.email, fax: @renter.fax, first_name: @renter.first_name, last_name: @renter.last_name, phone: @renter.phone, state: @renter.state, zip: @renter.zip }
    assert_redirected_to renter_path(assigns(:renter))
  end

  test "should destroy renter" do
    assert_difference('Renter.count', -1) do
      delete :destroy, id: @renter
    end

    assert_redirected_to renters_path
  end
end
