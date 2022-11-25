# frozen_string_literal: true

# policy
class VacancyPolicy < ApplicationPolicy
  attr_reader :user, :vacancy

  def initialize(user, vacancy)
    @user = user
    @vs = vacancy
  end

  def create?
    user.admin? || user.company?
  end

  # def show?
  #   user.admin? || user.id == @vs.company_detail.user_id
  # end

  def update?
    user.admin? || user.id == @vs.company_detail.user_id
  end

  def destroy?
    user.admin? || user.id == @vs.company_detail.user_id
  end
end
