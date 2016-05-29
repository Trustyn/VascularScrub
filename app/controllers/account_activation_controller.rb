class AccountActivationController < ApplicationController
  
    #User does not need to be logged in to access pages
  skip_before_action :logged_in_user
  
  def edit
      #defines user as record found by email address
    user = User.find_by(email: params[:email])
      #ensures that user is found in database, user is not activated, and users
      #token can be used as a password for the activation_digest field
    if(user && !user.activated? && user.authenticated?(:activation, params[:id]))
      user.activate
      log_in user
      flash.alert = "Account activated"
      redirect_to user
    else
      flash.alert = "Invalid activation link"
      redirect_to root_url
    end
  end
  
end