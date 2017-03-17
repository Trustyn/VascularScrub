class LeVenousFormsController < ApplicationController
    
    def new
        @le_venous_form = current_user.le_venous_forms.build
        @le_venous_form.form = Form.new
        @btnText = "Create"
    end
    
    def create
        @le_venous_form = current_user.le_venous_forms.build(le_venous_params)
        if(@le_venous_form.save)
            flash[:success] = "LE Venous Form Created Succesfully"
            redirect_to @le_venous_form
        else
            render 'new'
        end
    end
    
    def show
        @le_venous_form = LeVenousForm.find(params[:id])
    end
    
    def index
        @page_title = "All LE Venous Forms"
        @le_venous_forms = LeVenousForm.all
    end
    
    def edit
        @page_title = "Edit LE Venous Form"
        @le_venous_form = LeVenousForm.find(params[:id])
        @btnText = "Update"
    end
    
    def update
        @le_venous_form = LeVenousForm.find(params[:id])
        if @le_venous_form.update_attributes(le_venous_params)
            flash.alert = "LeVenous Form Updated"
            redirect_to @le_venous_form
        else
            render 'edit'
        end
    end
    
    def destroy
        LeVenousForm.find(params[:id]).destroy
        flash.alert = "LE Venous Form Deleted"
        redirect_to root_url
    end
    
private
    def le_venous_params
        params.require(:le_venous_form).permit(           :admittingDX,
                                                          :pulEmb,
                                                          :dvt,
                                                          :otherSurgery,
                                                          :medications,
                                                          :commFemoralRight,
                                                          :commFemoralLeft,
                                                          :commFemoralAcuteRight,
                                                          :commFemoralAcuteLeft,
                                                          :supFemoralRight,
                                                          :supFemoralLeft,
                                                          :supFemoralAcuteRight,
                                                          :supFemoralAcuteLeft,
                                                          :poplitealRight,
                                                          :poplitealLeft,
                                                          :poplitealAcuteRight,
                                                          :poplitealAcuteLeft,
                                                          :postTibialRight,
                                                          :postTibialLeft,
                                                          :postTibialAcuteRight,
                                                          :postTibialAcuteLeft,
                                                          :peronealRight,
                                                          :peronealLeft,
                                                          :peronealAcuteRight,
                                                          :peronealAcuteLeft,
                                                          :form_attributes => [:age,
                                                :gender_id,
                                                :technologist_id,
                                                :bpRight,
                                                :bpLeft,
                                                :history,
                                                :symptoms,
                                                :prelimResults,
                                                :patientResults])
    end
    
    def correct_user
        @user = User.find(params[:id])
        redirect_to(root_url) unless current_user?@user
    end
end
