class ProjectsController < ApplicationController
  def create
    @roadwork = Roadwork.find(params[:roadwork_id])
    @project = Project.new(project_params)
    @project.roadwork = @roadwork
    if @project.save
      # Deliver the signup email
      NotificationMailer.create_project(@project).deliver
      redirect_to roadwork_path(@roadwork, :notice => 'Projet créé')
    else
      render 'roadworks/show'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @roadwork = @project.roadwork
    @project.destroy
    redirect_to roadwork_path(@roadwork)
  end

  private

  def project_params
    params.require(:project).permit(:name, :image_url)
  end
end
