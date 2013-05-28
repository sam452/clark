class PhotographsController < ApplicationController
  authorize_resource

  def new
  	@project = Project.find(params[:project_id])
  	@photograph = Photograph.new
  end

  def create
  	@project = Project.find(params[:project_id])
  	@photograph = @project.photographs.build(params[:photograph])

  	if @photograph.save
  	  flash[:notice] = "Your photo has been saved."
      redirect_to project_photograph_path(@project, @photograph)
  	else
      flash[:error] = "Your photo couldn't be saved."
      render :new    
    end
  end

  def show
    @photograph = Photograph.find(params[:id])  
  end


end  