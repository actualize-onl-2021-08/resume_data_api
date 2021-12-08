class SkillsController < ApplicationController
  def index
    s = Skill.all
    render json: s
  end

  def create
    s = Skill.new(
      skill_name: params[:skill_name],
      student_id: params[:student_id]
    )

    if s.save
      render json: s
    else
      render json: s.errors.full_messages
    end

  end

  def show
    id = params[:id]
    s = Skill.find_by(id: id)
    render json: s
  end

  def update
    the_id = params[:id]
    s = Skill.find_by(id: the_id) 
    s.skill_name = params[:skill_name] || s.skill_name
    s.student_id = params[:student_id] || s.student_id


    if s.save
      render json: s
    else 
      render json: s.errors.full_messages
    end
  end

  def destroy
    s = Skill.find_by(id: params[:id])
    s.destroy
    render json: {message: "The skill has been removed"}
  end
end
