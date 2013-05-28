class HomeController < ApplicationController
  def index
    @project = Project.find(1)
   @photographs = Photograph.where(:project_id => @project.id)
  end
end
