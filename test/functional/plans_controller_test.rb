require 'test_helper'

class PlansControllerTest < ActionController::TestCase
  setup do
    @plan = plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan" do
    assert_difference('Plan.count') do
      post :create, plan: { bathrooms: @plan.bathrooms, bedrooms: @plan.bedrooms, casita: @plan.casita, court: @plan.court, depth: @plan.depth, dining: @plan.dining, garage: @plan.garage, garage_loc: @plan.garage_loc, half_bath: @plan.half_bath, levels: @plan.levels, living: @plan.living, media_string: @plan.media_string, name: @plan.name, sqfoot: @plan.sqfoot, study: @plan.study, style: @plan.style, suite: @plan.suite, view: @plan.view, width: @plan.width }
    end

    assert_redirected_to plan_path(assigns(:plan))
  end

  test "should show plan" do
    get :show, id: @plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plan
    assert_response :success
  end

  test "should update plan" do
    put :update, id: @plan, plan: { bathrooms: @plan.bathrooms, bedrooms: @plan.bedrooms, casita: @plan.casita, court: @plan.court, depth: @plan.depth, dining: @plan.dining, garage: @plan.garage, garage_loc: @plan.garage_loc, half_bath: @plan.half_bath, levels: @plan.levels, living: @plan.living, media_string: @plan.media_string, name: @plan.name, sqfoot: @plan.sqfoot, study: @plan.study, style: @plan.style, suite: @plan.suite, view: @plan.view, width: @plan.width }
    assert_redirected_to plan_path(assigns(:plan))
  end

  test "should destroy plan" do
    assert_difference('Plan.count', -1) do
      delete :destroy, id: @plan
    end

    assert_redirected_to plans_path
  end
end
