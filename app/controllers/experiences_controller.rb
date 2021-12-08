class ExperiencesController < ApplicationController
  def index
    i = Experience.all
    render json: i
  end

  def create
    e = Experience.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details],
      student_id: params[:student_id]
    )

    if e.save
      render json: e
    else
      render json: e.errors.full_messages
    end

  end

  def show
    id = params[:id]
    e = Experience.find_by(id: id)
    render json: e
  end

  def update
    the_id = params[:id]
    e = Experience.find_by(id: the_id) 
    e.start_date = params[:start_date] || e.start_date
    e.end_date = params[:end_date] || e.end_date
    e.job_title = params[:job_title] || e.job_title
    e.company_name = params[:company_name] || e.company_name
    e.details = params[:details] || e.details
    e.student_id =  e.student_id

    if e.save
      render json: e
    else 
      render json: e.errors.full_messages
    end
  end

  def destroy
    e = Experience.find_by(id: params[:id])
    e.destroy
    render json: {message: "The experience has been removed"}
  end
  

end
