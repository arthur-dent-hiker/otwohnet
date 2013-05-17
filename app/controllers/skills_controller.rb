class SkillsController < ApplicationController
  def index
    @skills=Skill.all
  end

  def new
    @skill=Skill.new
  end

  def create
    @skill=Skill.new(params[:skill])
    if @skill.save
      redirect_to skills_path, :notice => "Skill created"
    else
      redirect_to skills_path, :alert => "Skill create failed"
    end
  end

  def update
    @skill=Skill.find(params[:id])
    if @skill.update_attributes(params[:skill])
      redirect_to skills_path, :notice => "Skill updated"
    else
      redirect_to edit_skill_path(@skill), :alert => "Skill update failed"
    end
  end

  def edit
    @skill=Skill.find(params[:id])
  end

  def show
    @skill=Skill.find(params[:id])
  end
end
