# frozen_string_literal: true

require 'test_helper'

class JobSeekersControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get job_seekers_index_url
    assert_response :success
  end

  test 'should get show' do
    get job_seekers_show_url
    assert_response :success
  end

  test 'should get create' do
    get job_seekers_create_url
    assert_response :success
  end

  test 'should get update' do
    get job_seekers_update_url
    assert_response :success
  end
end
