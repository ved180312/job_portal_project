# frozen_string_literal: true

# policy
class CompanyPolicy < ApplicationPolicy
  attr_reader :user, :company

  def initialize(user, company)
    @user = user
    @cd = company
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
