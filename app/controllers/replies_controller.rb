class RepliesController < ApplicationController
  

  def new
    @reply = Reply.new
  end

  def create
    @reply = Reply.new(reply_params)
    @reply.post_id = params[:post_id]
    @reply.user_id = session[:user_id]
    # @reply.user_id = session[:user_id] if session[:user_id]
    @reply.save
    redirect_back fallback_location: posts_path
  end

  def destroy
    Reply.destroy(params[:id])
    redirect_back fallback_location: posts_path
  end

  private

  def reply_params
    params.require(:reply).permit(:text)
  end
end
