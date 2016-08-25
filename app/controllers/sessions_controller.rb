class SessionsController < ApplicationController
  skip_before_action :authorize
  
  def new
  end

  def create
    if user = User.authenticate(params[:name], params[:password])
      session[:user_id] = user.id
      redirect_to store_url
    else
      redirect_to login_url, :alert => "Inavalid user/password combination."
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to store_url, :notice => "Logged out!"
  end
end
