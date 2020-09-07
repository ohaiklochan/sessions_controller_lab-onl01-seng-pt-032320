class SessionsController < ApplicationController
  def new
  end
  
  def create
    if params[:username] == "" || params[:username] == nil
      redirect_to login_path
    else  
      session[:username] = params[:username]
      redirect_to '/'
    end
  end
  
  def destroy
    if session[:username]
      session.delete :username
    end
    redirect_to '/'
  end
end
