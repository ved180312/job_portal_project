# frozen_string_literal: true

require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test 'form_filled' do
    mail = UserMailer.form_filled
    assert_equal 'Form filled', mail.subject
    assert_equal ['to@example.org'], mail.to
    assert_equal ['from@example.com'], mail.from
    assert_match 'Hi', mail.body.encoded
  end
end
