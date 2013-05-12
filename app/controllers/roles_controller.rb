class RolesController < ApplicationController
  def index
    @roles=Role.all
  end

  def new
    @role=Role.new
  end

  def edit
  end

  def update
  end

  def create
    @role=Role.new(params[:role])
    if @role.save
      redirect_to roles_url, :notice => "Role Created"
    else
      redirect_to roles_url, :notice => "Role creation failed"
    end
  end

  def show
  end
end
