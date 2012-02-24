class SessionsController < ApplicationController
  skip_before_filter :login_required, :only => [:new,:create]
  def new
    redirect_to root_url if session[:user_id]
  end
  
  def index
    redirect_to root_url
  end

  def create
    user = User.authenticate(params[:login], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to_target_or_default root_url, :notice => t(:login_ok)
    else
      flash.now[:alert] = t(:login_ko)
      render :action => 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => t(:logout_ok)
  end
end
