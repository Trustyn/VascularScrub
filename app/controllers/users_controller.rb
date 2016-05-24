class UsersController < ApplicationController
    #Ensures only the owner of the object can update and delete
  before_action :correct_user, only: [:edit, :update, :destroy ]
  
  def new
    @page_title = "Register"
    @btnText = "Register"
    @user = User.new
    @obj = @user
    render 'shared/form'
  end
  
  
  def create
    @user = User.new(user_params)
    @obj = @user
    if @user.save
      flash.notice = "Sign up successful. Check email for activation link"
      @user.send_activation_email
      redirect_to root_url
    else
      flash.now.alert = "Form Error"
      render 'shared/form'
    end
  end
  
  
  def show
    @user = User.find(params[:id])
    redirect_to(root_url) && return unless logged_in?
    @recipes = @user.recipes.paginate(page: params[:page])
    @page_title = "User #{@user.username}"
  end
  
  
  def index
    @page_title = "All Users"
    @users = User.paginate(page: params[:page])
  end
  
 
  def edit
    @page_title = "Edit Profile"
    @btnText = "Update Profile"
    @obj = @user
    render 'shared/form'
  end
  
  
  def update
    @obj = @user
    if @user.update_attributes(user_params)
      flash.alert = "Profile updated"
      redirect_to current_user
    else
      render 'shared/form'
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