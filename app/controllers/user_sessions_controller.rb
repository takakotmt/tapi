class UserSessionsController < ApplicationController
  def new
  end

  def create
    user = login(params[:user_sessions][:email], params[:user_sessions][:password])
    puts user
    puts "ssssss"
    if user
      redirect_to top_index_path
    else
      render :new
    end
  end
end
