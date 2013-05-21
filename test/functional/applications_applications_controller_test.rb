require 'test_helper'

class ApplicationsApplicationsControllerTest < ActionController::TestCase
  setup do
    @applications_application = applications_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applications_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applications_application" do
    assert_difference('ApplicationsApplication.count') do
      post :create, applications_application: { applications_event_id: @applications_application.applications_event_id, birth_year: @applications_application.birth_year, comment: @applications_application.comment, course: @applications_application.course, name: @applications_application.name }
    end

    assert_redirected_to applications_application_path(assigns(:applications_application))
  end

  test "should show applications_application" do
    get :show, id: @applications_application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @applications_application
    assert_response :success
  end

  test "should update applications_application" do
    put :update, id: @applications_application, applications_application: { applications_event_id: @applications_application.applications_event_id, birth_year: @applications_application.birth_year, comment: @applications_application.comment, course: @applications_application.course, name: @applications_application.name }
    assert_redirected_to applications_application_path(assigns(:applications_application))
  end

  test "should destroy applications_application" do
    assert_difference('ApplicationsApplication.count', -1) do
      delete :destroy, id: @applications_application
    end

    assert_redirected_to applications_applications_path
  end
end
