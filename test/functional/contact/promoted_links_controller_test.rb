require 'test_helper'

module Contact
  class PromotedLinksControllerTest < ActionController::TestCase
    setup do
      @promoted_link = promoted_links(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:promoted_links)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create promoted_link" do
      assert_difference('PromotedLink.count') do
        post :create, promoted_link: {  }
      end
  
      assert_redirected_to promoted_link_path(assigns(:promoted_link))
    end
  
    test "should show promoted_link" do
      get :show, id: @promoted_link
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @promoted_link
      assert_response :success
    end
  
    test "should update promoted_link" do
      put :update, id: @promoted_link, promoted_link: {  }
      assert_redirected_to promoted_link_path(assigns(:promoted_link))
    end
  
    test "should destroy promoted_link" do
      assert_difference('PromotedLink.count', -1) do
        delete :destroy, id: @promoted_link
      end
  
      assert_redirected_to promoted_links_path
    end
  end
end
