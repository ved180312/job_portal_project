# frozen_string_literal: true

# home controller
class HomesController < ApplicationController
  def home
    @vs = Vacancy.all
  end

  def firstpage; end

  def userhome
    @user = User.all
  end
end
