class TechnologistsController < ApplicationController
     
  def new
    @technologist = current_user.technologists.build
    @technologist.form.build
    @btnText = "Add"
  end
  
  
  def create
    @technologist = current_user.technologists.build(technologist_params)
    if @technologist.save
      flash.notice = "Technologist Added"
      redirect_to @technologist
    else
      render 'new'
    end
  end
  
  
  def show
    @technologist = Technologist.find(params[:id])
  end
  
  
  def index
    @page_title = "All technologists"
    @technologists = Technologist.all
  end
  
 
  def edit
    @page_title = "Edit Technologist"
    @technologist = Technologist.find(params[:id])
    @btnText = "Update"
    
  end
  
  
  def update
    @technologist = Technologist.find(params[:id])
    if @technologist.update_attributes(technologist_params)
      flash.alert = "Technologist Updated"
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

