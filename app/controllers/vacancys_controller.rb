# frozen_string_literal: true

class VacancysController < ApplicationController
  before_action :set_vs, only: %i[edit update show destroy]
  def new
    @vs = Vacancy.new
  end

  def index
    @vs = Vacancy.all
  end

  def jobshow
    @vs = Vacancy.find(params[:id]).job_seekers
  end

  def show; end

  def edit; end

  def update
    if @vs.update(vs_params)
      authorize @vs

      flash[:notice] = 'Sucessfully Updated'
      redirect_to @vs
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def create
    @vs = Vacancy.new(vs_params)
    authorize @vs

    if @vs.save
      flash[:notice] = 'successfully filled.'
      redirect_to @vs
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @vs.destroy
    redirect_to vacancys_path
  end

  private

  def vs_params
    params.require(:vacancy).permit(:job_title, :job_type, :language_knowledge, :other_knowledge, :qualification, :experience, :description,
                                    :company_detail_id)
  end

  def set_vs
    @vs = Vacancy.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    redirect_to vacancys_path
    flash[:notice] = e
  end
end
