class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students.as_json 
  end
  def create
    student = Student.new(
      first_name: params[:first_name], 
      last_name: params[:last_name],
      email: params[:email], 
      phone_number: params[:phone_number],
      bio: params[:bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      website_url: params[:website_url],
      resume_url: params[:resume_url],
      github_url: params[:github_url],
      photo: params[:photo],
      password: params[:password]
    )
    student.save
    render json: student.as_json
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student.as_json
  end 

  def update 
    student = Student.find_by(id: params[:id])
    student.first_name = params[:first_name] || student.first_name 
    student.last_name = params[:last_name] || student.last_name
    student.email = params[:email] || student.email 
    student.phone_number = params[:phone_number] || student.phone_number
    student.bio = params[:bio] || student.bio
    student.linkedin_url = params[:linkedin_url] || student.linkedin_url
    student.twitter_handle = params[:twitter_handle] || student.twitter_handle
    student.website_url = params[:website_url] || student.website_url
    student.resume_url = params[:resume_url] || student.resume_url
    student.github_url = params[:github_url] || student.github_url
    student.photo = params[:photo] || student.photo
    student.password = params[:password] || student.password 
    student.save
    render json: student.as_json
  end

  def destroy 
    student = Student.find_by(id: params[:id])
    student.destroy
    render json: {message: "Student successfully destroyed."}
  end 
end
