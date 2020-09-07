class SessionsController < ApplicationController
  def new
  end
  
  def create
    if params[:name] == "" || params[:name] == nil
      redirect_to login_path
    else  
      session[:username] = params[:username]
      redirect_to '/'
    end
  end
  
  def destroy
    session.delete :username
  end
end
