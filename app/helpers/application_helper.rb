module ApplicationHelper

  def current_owner
    @current_owner ||= session[:remember_token] && Owner.find(session[:remember_token])
  end

  def authenticate_owner
    if !current_owner
      flash[:danger] = "You must login to take that action"
      redirect_to new_sessions_path
    end
  end

end
