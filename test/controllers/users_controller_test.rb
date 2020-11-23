require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get first_name" do
    get users_first_name_url
    assert_response :success
  end

  test "should get last_name" do
    get users_last_name_url
    assert_response :success
  end

  test "should get email" do
    get users_email_url
    assert_response :success
  end

  test "should get password" do
    get users_password_url
    assert_response :success
  end

  test "should get birthday:date" do
    get users_birthday:date_url
    assert_response :success
  end

  test "should get stairs:integer" do
    get users_stairs:integer_url
    assert_response :success
  end

  test "should get job" do
    get users_job_url
    assert_response :success
  end

  test "should get hobbies:text" do
    get users_hobbies:text_url
    assert_response :success
  end

  test "should get phone_number" do
    get users_phone_number_url
    assert_response :success
  end

  test "should get catch_phrase" do
    get users_catch_phrase_url
    assert_response :success
  end

end
