# frozen_string_literal: true

# home controller
class HomesController < ApplicationController
  def home; end

  def firstpage; end

  def userhome
    @user = User.all
  end

  def home2
    @vs = Vacancy.all
  end
  def blog1
  end
  def blog2
  end
  def blog3
  end
  def about; end
end
