class TeamsController < ApplicationController

  before_action :authenticate_owner, only: [:new]

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
    @league = League.find(params[:league_id])
  end

  def create
    Team.create(params.require(:team).permit(:owner, :name, :league, :players => []))
    redirect_to league_path(params[:league_id])
  end

  def show
    @team = Team.find(params[:id])
    @players = Player.where(:team_id => @team.id)
    @league = League.find(params[:league_id])
  end

  def edit
    @team = Team.find(params[:id])
    @league = League.find(params[:league_id])
    @players = Player.where(:team_id => nil)
    @team_players = Player.where(:team_id => @team.id)
  end

  def update
    @team = Team.find(params[:id])
    if !params[:team][:player_add].empty?
      if Player.find(params[:team][:player_add]).update(team_id: @team.id)
        flash[:success] = Player.find(params[:team][:player_add]).name + " has been successfully added to " + @team.name
      end
    end
    if !params[:team][:players].empty?
      if Player.find(params[:team][:players]).update(team_id: nil)
        flash[:danger] = Player.find(params[:team][:players]).name + " has been removed from " + @team.name
      end
    end
    redirect_to league_team_path
  end

  def destroy
  end
end
