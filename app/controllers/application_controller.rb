# frozen_string_literal: true

# application controller
class ApplicationController < ActionController::Base
  before_action :set_query
  include Pundit::Authorization

  def set_query
    @query = Vacancy.ransack(params[:q])
  end


  include Pundit
  rescue_from Pundit::NotAuthorizedError || Pundit::NotDefinedError do |exception|
    policy = exception.policy
    policy_name = exception.policy.class.to_s.underscore

    error_key = if policy.respond_to?(:policy_error_key) && policy.policy_error_key
                  policy.policy_error_message
                else
                  exception.query
                end

    flash[:error] = t("#{policy_name}.#{error_key}", scope: 'pundit', default: :default)
    redirect_to(request.referrer || root_path)
  end
end
