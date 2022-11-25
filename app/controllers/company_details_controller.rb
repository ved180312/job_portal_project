# frozen_string_literal: true

class CompanyDetailsController < ApplicationController
  before_action :set_cd, only: %i[edit update show destroy]

  def new
    @cd = CompanyDetail.new
  end

  def index
    @cd = CompanyDetail.all
  end

  def show; end

  def edit; end

  def update
    if @cd.update(cd_params)
      flash[:notice] = 'Sucessfully Updated'
      redirect_to @cd
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def create
    @cd = CompanyDetail.new(cd_params)
    if @cd.save
      flash[:notice] = ' successfully filled.'
      redirect_to @cd
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @cd.destroy
    redirect_to company_details_path
  end

  private

  def cd_params
    params.require(:company_detail).permit(:company_name, :company_link, :company_location, :company_started_year, :job_types,
                                           :user_id)
  end

  def set_cd
    @cd = CompanyDetail.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    redirect_to company_details_path
    flash[:notice] = e
  end
end
