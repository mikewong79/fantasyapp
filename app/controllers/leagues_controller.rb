class LeaguesController < ApplicationController
  before_action :authenticate_owner, only: [:new]

  def index
    @leagues = League.all
  end

  def new
    @league = League.new
  end

  def create
    if League.create(params.require(:league).permit(:name, :owner, :teams => []))
      redirect_to leagues_path
    else
      render 'new'
    end
  end

  def show
    @league = League.find(params[:id])
    @teams = Team.where(:league_id => @league.id)
    @owners = Owner.all
  end

  def edit
    @league = League.find(params[:id])
  end

  def update
    if League.update(params.require(:league).permit(:name, :owner, :teams => []))
      redirect_to leagues_path
    else
      render 'edit'
    end
  end

  def destroy
  end

end
