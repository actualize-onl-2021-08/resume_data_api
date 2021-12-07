class EducationsController < ApplicationController
  def index
    educations = Education.all
    render json: educations.as_json

  end
end
