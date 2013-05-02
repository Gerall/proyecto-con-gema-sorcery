class SessionsController < ApplicationController
 
  def create
  	user = login(params[:username], params[:password], params[:remember_me])
    if user
       redirect_back_or_to buyers_path
    else
        flash.now.alert = "Email or password was invalid"
        render :new
    end
  end

  def destroy
  	logout
  	redirect_to login_path
  end
end
