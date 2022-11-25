# frozen_string_literal: true

class UserMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.form_filled.subject
  #
  def form_filled(job_seeker)
    @js = job_seeker

    mail to: job_seeker.email, subject: " #{@js.company_detail.company_name} -
    Thank you for submitting your job application"
  end
end
