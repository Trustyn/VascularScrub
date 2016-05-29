class StaticPagesController < ApplicationController
  def home
    redirect_to login_url unless logged_in?
  end
end
