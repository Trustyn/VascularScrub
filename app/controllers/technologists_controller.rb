class TechnologistsController < ApplicationController
     
  
  def new
    @technologist = Technologist.new
    @technologist.form.build
  end
  
  
  def create
    @technologist = Technologist.new(technologist_params)
    if @technologist.save
      flash.notice = "Technologist Created Succesfully"
      redirect_to @technologist
    else
      render 'new'
    end
  end
  
  
  def show
    @technologist = technologist.find(params[:id])
  end
  
  
  def index
    @page_title = "All technologists"
    @technologists = current_user.technologists
  end
  
 
  def edit
    @page_title = "Edit Technologist"
    @technologist = Technologist.find(params[:id])
    
  end
  
  
  def update
    if @technologist.update_attributes(technologist_params)
      flash.alert = "Technologist updated"
      redirect_to @technologist
    else
      render 'edit'
    end
  end
  
  def destroy
    Technologist.find(params[:id]).destroy
    flash.alert = "Technologist Deleted"
    redirect_to current_user
    
  end
  
  
  
#PRIVATE########################################################################  
private
  
  def technologist_params
    params.require(:technologist).permit(:firstname,
                                    :lastname)
  end
  
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?@user
  end
  
end

