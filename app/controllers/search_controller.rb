# frozen_string_literal: true

class SearchController < ApplicationController
  def index
    
    @query = Vacancy.ransack(params[:q])
    @vs = @query.result(distinct: true)
  end
end
