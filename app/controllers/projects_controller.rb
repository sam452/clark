class ProjectsController < ApplicationController
  authorize_resource

def index
  @projects = Project.find(:all)
end

def show
   @project = Project.find(params[:id])
   @photographs = Photograph.where(:project_id => @project.id)
end

def new
  @project = Project.new
end

def edit
  @photographs = Photograph.where(:project_id => params[:id])
end

  def update
    authorize! :update, @project, :message => 'Not authorized as an administrator.'
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project], :as => :admin)
      redirect_to projects_path, :notice => "Project updated."
    else
      redirect_to projects_path, :alert => "Unable to update project."
    end
  end
  
  def create
    @project = Project.new(params[:project])
    
    respond_to do |format|
      if @project.save
        current_user.update_attribute :project_id, @project.id
        format.html {redirect_to @project}
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end
    
  def destroy
    authorize! :destroy, @project, :message => 'Not authorized as an administrator.'
    project = Project.find(params[:id])
    unless user == current_user
      project.destroy
      redirect_to projects_path, :notice => "Project deleted."
    else
      redirect_to projects_path, :notice => "Can't delete this project."
    end
  end


end