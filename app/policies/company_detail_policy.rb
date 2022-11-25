# frozen_string_literal: true

# policy
class CompanyDetailPolicy < ApplicationPolicy
  attr_reader :user, :company_detail

  def initialize(user, company_detail)
    @user = user
    @cd = company_detail
  end

  def create?
    user.admin? || user.company?
  end

  # def show
  #   user.admin? || user.id == @cd.user_id
  # end

  def update?
    user.admin? || user.id == @cd.user_id
  end

  def destroy?
    user.admin? || user.id == @cd.user_id
  end
end
