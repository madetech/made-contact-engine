require 'test_helper'

module Contact
  class CustomerCaresControllerTest < ActionController::TestCase
    setup do
      @customer_care = customer_cares(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:customer_cares)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create customer_care" do
      assert_difference('CustomerCare.count') do
        post :create, customer_care: {  }
      end
  
      assert_redirected_to customer_care_path(assigns(:customer_care))
    end
  
    test "should show customer_care" do
      get :show, id: @customer_care
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @customer_care
      assert_response :success
    end
  
    test "should update customer_care" do
      put :update, id: @customer_care, customer_care: {  }
      assert_redirected_to customer_care_path(assigns(:customer_care))
    end
  
    test "should destroy customer_care" do
      assert_difference('CustomerCare.count', -1) do
        delete :destroy, id: @customer_care
      end
  
      assert_redirected_to customer_cares_path
    end
  end
end
