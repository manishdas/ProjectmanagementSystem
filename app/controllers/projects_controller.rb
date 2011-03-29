class ProjectsController < ApplicationController
  def index
    @project = Project.all
  end
  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new (params[:project])
    if @project.save
      flash[:notice] = "Project created!"
      redirect_to projectmanagementsystems_url
    else
      flash[:notice] = "milena!"
      render "new"
    end
  end

end
