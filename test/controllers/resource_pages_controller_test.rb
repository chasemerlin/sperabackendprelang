require 'test_helper'

class ResourcePagesControllerTest < ActionController::TestCase
  setup do
    @resource_page = resource_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resource_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resource_page" do
    assert_difference('ResourcePage.count') do
      post :create, resource_page: { description: @resource_page.description, title: @resource_page.title }
    end

    assert_redirected_to resource_page_path(assigns(:resource_page))
  end

  test "should show resource_page" do
    get :show, id: @resource_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resource_page
    assert_response :success
  end

  test "should update resource_page" do
    patch :update, id: @resource_page, resource_page: { description: @resource_page.description, title: @resource_page.title }
    assert_redirected_to resource_page_path(assigns(:resource_page))
  end

  test "should destroy resource_page" do
    assert_difference('ResourcePage.count', -1) do
      delete :destroy, id: @resource_page
    end

    assert_redirected_to resource_pages_path
  end
end
