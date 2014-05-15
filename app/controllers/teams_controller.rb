class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    Team.create(params.require(:team).permit(:owner, :name, :players => []))
    redirect_to teams_path
  end

  def show
    @team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    if @team.update(params.require(:team).permit(:owner, :name, :players => []))
      redirect_to teams_path
    else
      render 'edit'
    end
  end

  def destroy
  end
end
