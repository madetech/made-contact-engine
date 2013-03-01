require 'test_helper'

module Contact
  class OfficeAddressesControllerTest < ActionController::TestCase
    setup do
      @office_address = office_addresses(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:office_addresses)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create office_address" do
      assert_difference('OfficeAddress.count') do
        post :create, office_address: { address: @office_address.address, title: @office_address.title }
      end
  
      assert_redirected_to office_address_path(assigns(:office_address))
    end
  
    test "should show office_address" do
      get :show, id: @office_address
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @office_address
      assert_response :success
    end
  
    test "should update office_address" do
      put :update, id: @office_address, office_address: { address: @office_address.address, title: @office_address.title }
      assert_redirected_to office_address_path(assigns(:office_address))
    end
  
    test "should destroy office_address" do
      assert_difference('OfficeAddress.count', -1) do
        delete :destroy, id: @office_address
      end
  
      assert_redirected_to office_addresses_path
    end
  end
end
