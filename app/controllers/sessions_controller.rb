class SessionsController < ApplicationController
  def new
  end
  
  def create
    if 
    else  
      session[:username] = params[:username]
      redirect_to '/'
    end
  end
  
  def destroy
    session.delete :username
  end
end
