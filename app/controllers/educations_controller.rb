class EducationsController < ApplicationController
  def index
    educations = Education.all
    render json: {message: "hello"}
  end
end
