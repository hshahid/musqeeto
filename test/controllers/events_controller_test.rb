require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { address: @event.address, awards: @event.awards, city: @event.city, country: @event.country, dateRunsFrom: @event.dateRunsFrom, dateRunsTo: @event.dateRunsTo, email: @event.email, hours: @event.hours, name: @event.name, openTo: @event.openTo, phone: @event.phone, state: @event.state, website: @event.website, zip: @event.zip }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    patch :update, id: @event, event: { address: @event.address, awards: @event.awards, city: @event.city, country: @event.country, dateRunsFrom: @event.dateRunsFrom, dateRunsTo: @event.dateRunsTo, email: @event.email, hours: @event.hours, name: @event.name, openTo: @event.openTo, phone: @event.phone, state: @event.state, website: @event.website, zip: @event.zip }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end