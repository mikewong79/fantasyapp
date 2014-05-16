 class SessionsController < ApplicationController
  def new
  end

  def create
    @owner = Owner.where(:email => params[:session][:email]).first
    if @owner == nil || !@owner.authenticate(params[:session][:password])
      flash[:danger] = "Invalid email/password combination"
      render 'new'
    else
      flash[:success] = "you are logged in"
      session[:remember_token] = @owner.id
      @current_owner = @owner
      redirect_to root_path
    end
  end

  def destroy
    session.delete(:remember_token)
    redirect_to root_path
  end

end
