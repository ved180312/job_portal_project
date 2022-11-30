# frozen_string_literal: true

# controller
class CompanysController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cd, only: %i[edit update show destroy]

  def new
    @cd = Company.new
  end

  def index
    @cd = Company.all
  end

  def show; end

  def edit; end

  def update
    if @cd.update(cd_params)
      authorize @cd

      flash[:notice] = 'Sucessfully Updated'
      redirect_to @cd
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def create
    @cd = Company.new(cd_params)
    authorize @cd
    if @cd.save
      flash[:notice] = ' successfully Applied.'
      redirect_to @cd
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    authorize @cd
    @cd.destroy
    redirect_to companys_path
  end

  private

  def cd_params
    params.require(:company).permit(:name, :link, :location, :started_year, :job_types,
                                    :user_id)
  end

  def set_cd
    @cd = Company.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    redirect_to companys_path
    flash[:notice] = e
  end
end
