class CapstonesController < ApplicationController
  def index
    c = Capstone.all
    render json: c
  end

  def create
    c = Capstone.new(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
      student_id: params[:student_id]
    )

    if c.save
      render json: c
    else
      render json: c.errors.full_messages
    end

  end

  def show
    id = params[:id]
    c = Capstone.find_by(id: id)
    render json: c
  end

  def update
    the_id = params[:id]
    c = Capstone.find_by(id: the_id) 
    c.name = params[:name] || c.name
    c.description = params[:description] || c.description
    c.url = params[:url] || c.url
    c.screenshot = params[:screenshot] || c.screenshot
    c.student_id = params[:student_id] || c.student_id


    if c.save
      render json: c
    else 
      render json: c.errors.full_messages
    end

  end

  def destroy
    c = Capstone.find_by(id: params[:id])
    c.destroy
    render json: {message: "The capstone has been removed"}
  end

end
