class FormsController < ApplicationController
     
  
  def new
    @form = Form.new
    @form.carotid_form.build
    
  end
  
  
  def create
    @form = Form.new(form_params)
    if @form.save
      flash.notice = "Form Created Succesfully"
      redirect_to @form
    else
      render 'new'
    end
  end
  
  
  def show
    @form = Form.find(params[:id])
  end
  
  
  def index
    @page_title = "All Forms"
    @forms = current_user.forms
  end
  
 
  def edit
    @page_title = "Edit Form"
    @form = Form.find(params[:id])
    
  end
  
  
  def update
    if @form.update_attributes(form_params)
      flash.alert = "Form updated"
      redirect_to @form
    else
      render 'edit'
    end
  end
  
  def destroy
    Form.find(params[:id]).destroy
    flash.alert = "Form Deleted"
    redirect_to current_user
    
  end
  
  
  
#PRIVATE########################################################################  
private
  
  def form_params
    params.require(:form).permit(:technologist_id,
                                 :age,
                                 :gender,
                                 :bpRight,
                                 :bpLeft, 
                                 :history,
                                 :symptoms,
                                 :prelimResults,
                                 :patientResults)
  end
  
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?@user
  end
  
end
