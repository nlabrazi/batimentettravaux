class RoadworksController < ApplicationController
  def index
    @roadworks = Roadwork.all
  end

  def show
    @roadwork = Roadwork.find(params[:id])
    @project = Project.new
    @projects = @roadwork.projects
  end

  def new
    @roadwork = Roadwork.new
  end

  def create
    @roadwork = Roadwork.new(roadwork_params)
    if @roadwork.save
      redirect_to roadwork_path(@roadwork)
    else
      render :new
    end
  end

  private

  def roadwork_params
    params.require(:roadwork).permit(:name, :banner_url)
  end
end
