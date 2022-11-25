# frozen_string_literal: true

class JobSeekersController < ApplicationController
  before_action :set_js, only: %i[edit update show destroy]
  def new
    @js = JobSeeker.new
  end

  def index
    @js = JobSeeker.all
  end

  def show; end

  def edit; end

  def update
    if @js.update(js_params)
      flash[:notice] = 'Sucessfully Updated'
      redirect_to @js
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def create
    @js = JobSeeker.new(js_params)
    if @js.save
      UserMailer.form_filled(@js).deliver_later
      flash[:notice] = ' successfully filled.'
      redirect_to @js
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @js.destroy
    redirect_to job_seekers_path
  end

  private

  def js_params
    params.require(:job_seeker).permit(:name, :number, :email, :gender,
                                       :percentage_10th, :percentage_12th, :graduation_course, :stream, :graduation_percentage, :hometown, :current_location, :placed, :cv, :company_detail_id, :user_id, :vacancy_id)
  end

  def set_js
    @js = JobSeeker.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    redirect_to job_seekers_path
    flash[:notice] = e
  end
end
