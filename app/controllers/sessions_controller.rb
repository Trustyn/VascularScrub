class SessionsController < ApplicationController
  
  def new
    @user = User.new
  end
  
  
  def create
      #find user
    @user = User.find_by(username: params[:session][:username])  
      #authenticate user
    if @user && @user.authenticate(params[:session][:password])
      if @user.activated?
        log_in(@user)
          #if remember me box is checked create remember token/cookie
        params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
        redirect_back_or root_url
      else
        flash.alert = "Account not activated. Check email for activation link"
        redirect_to root_url
      end
    else
      flash.now.alert = "Invalid username/password combination"
      render 'new'
    end
  end
 
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
  
end