require 'test_helper'

class CourseEnrolmentsControllerTest < ActionController::TestCase
  setup do
    @course_enrolment = course_enrolments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_enrolments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_enrolment" do
    assert_difference('CourseEnrolment.count') do
      post :create, course_enrolment: { session_id: @course_enrolment.session_id, user_id: @course_enrolment.user_id }
    end

    assert_redirected_to course_enrolment_path(assigns(:course_enrolment))
  end

  test "should show course_enrolment" do
    get :show, id: @course_enrolment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_enrolment
    assert_response :success
  end

  test "should update course_enrolment" do
    patch :update, id: @course_enrolment, course_enrolment: { session_id: @course_enrolment.session_id, user_id: @course_enrolment.user_id }
    assert_redirected_to course_enrolment_path(assigns(:course_enrolment))
  end

  test "should destroy course_enrolment" do
    assert_difference('CourseEnrolment.count', -1) do
      delete :destroy, id: @course_enrolment
    end

    assert_redirected_to course_enrolments_path
  end
end
