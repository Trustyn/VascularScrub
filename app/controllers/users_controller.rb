class UsersController < ApplicationController
    #Ensures only the owner of the object can update and delete
  before_action :correct_user, only: [:edit, :update, :destroy ]
  
  def new
    @user = User.new
  end
  
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash.notice = "Sign up successful. Check email for activation link"
      @user.send_activation_email
      redirect_to root_url
    else
      flash.now.alert = "Form Error"
      render 'new'
    end
  end
  
  
  def show
    @user = User.find(params[:id])
    redirect_to(root_url) && return unless logged_in?
  end
  
  
  def index
    @page_title = "All Users"
    @users = User.all
  end
  
 
  def edit
    @page_title = "Edit Profile"
  end
  
  
  def update
    if @user.update_attributes(user_params)
      flash.alert = "Profile updated"
      redirect_to current_user
    else
      render 'edit'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    redirect_to users_url
  end
  
  
  
#PRIVATE########################################################################  
private
  
  def user_params
    params.require(:user).permit(:username, :password, :fname, :lname, :email, 
                                 :password_confirmation)
  end
  
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?@user
  end
  
end