# frozen_string_literal: true

require 'test_helper'

class CompanyDetailsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get company_details_index_url
    assert_response :success
  end

  test 'should get show' do
    get company_details_show_url
    assert_response :success
  end

  test 'should get create' do
    get company_details_create_url
    assert_response :success
  end

  test 'should get update' do
    get company_details_update_url
    assert_response :success
  end
end
