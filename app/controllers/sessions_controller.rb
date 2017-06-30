class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if (user && user.password == (params[:session][:password]))
      session[:user_id] = user.id
      redirect_to posts_url
    else
      render 'new' 
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to posts_url
  end
end
