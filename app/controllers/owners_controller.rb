class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      redirect_to :root
    else
      render :new
    end
  end

  def show
    @owner = Owner.find(params[:id])
    @teams = Team.where(:owner => @owner)
  end


  protected

  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :email, :password, :password_confirmation, :avatar)
  end
end
