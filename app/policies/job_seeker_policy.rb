# frozen_string_literal: true

# policy
class JobSeekerPolicy < ApplicationPolicy
  attr_reader :user, :job_seeker

  def initialize(user, job_seeker)
    @user = user
    @js = job_seeker
  end

  def show?
    user.admin? || user.company?
  end

  def update?
    user.admin? || user.company?
  end

  def destroy?
    user.admin? || user.company?
  end
end 