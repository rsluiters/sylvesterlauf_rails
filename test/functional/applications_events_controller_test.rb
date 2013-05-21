require 'test_helper'

class ApplicationsEventsControllerTest < ActionController::TestCase
  setup do
    @applications_event = applications_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applications_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applications_event" do
    assert_difference('ApplicationsEvent.count') do
      post :create, applications_event: { announcement_url: @applications_event.announcement_url, comment: @applications_event.comment, deadline_internal: @applications_event.deadline_internal, name: @applications_event.name, url: @applications_event.url }
    end

    assert_redirected_to applications_event_path(assigns(:applications_event))
  end

  test "should show applications_event" do
    get :show, id: @applications_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @applications_event
    assert_response :success
  end

  test "should update applications_event" do
    put :update, id: @applications_event, applications_event: { announcement_url: @applications_event.announcement_url, comment: @applications_event.comment, deadline_internal: @applications_event.deadline_internal, name: @applications_event.name, url: @applications_event.url }
    assert_redirected_to applications_event_path(assigns(:applications_event))
  end

  test "should destroy applications_event" do
    assert_difference('ApplicationsEvent.count', -1) do
      delete :destroy, id: @applications_event
    end

    assert_redirected_to applications_events_path
  end
end
