require 'test_helper'

class BusinessWebsitesControllerTest < ActionController::TestCase
  setup do
    @business_website = business_websites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_websites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_website" do
    assert_difference('BusinessWebsite.count') do
      post :create, business_website: @business_website.attributes
    end

    assert_redirected_to business_website_path(assigns(:business_website))
  end

  test "should show business_website" do
    get :show, id: @business_website
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_website
    assert_response :success
  end

  test "should update business_website" do
    put :update, id: @business_website, business_website: @business_website.attributes
    assert_redirected_to business_website_path(assigns(:business_website))
  end

  test "should destroy business_website" do
    assert_difference('BusinessWebsite.count', -1) do
      delete :destroy, id: @business_website
    end

    assert_redirected_to business_websites_path
  end
end
