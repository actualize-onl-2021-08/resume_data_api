class EducationsController < ApplicationController
  def index
    educations = Education.all
    render json: educations.as_json
  end
  
  def create
    education = Education.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details],
      student_id: params[:student_id]
    )
    if education.save
      render json: { message: "Education created successfully" }, status: :created
    else
      render json: { errors: education.errors.full_messages }, status: :bad_request
    end
    # render json: {message: "hello"}
  end
end
