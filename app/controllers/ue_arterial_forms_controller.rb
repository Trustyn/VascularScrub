class UeArterialFormsController < ApplicationController

    def new
        @ue_arterial_form = current_user.ue_arterial_forms.build
        @ue_arterial_form.form = Form.new
        @btnText = "Create"
    end
    
    def create
        @ue_arterial_form = current_user.ue_arterial_forms.build(ue_arterial_params)
        if(@ue_arterial_form.save)
            flash[:success] = "UE Arterial Form Created"
            redirect_to @ue_arterial_form
        else
            render 'new'
        end
    end
    
    def show
        @ue_arterial_form = UeArterialForm.find(params[:id])
    end
    
    def index
        @page_title = "All UE Arterial Forms"
        @ue_arterial_forms = UeArterialForm.all
    end
    
    def edit
        @page_title = "Edit UE Arterial Form"
        @ue_arterial_form = UeArterialForm.find(params[:id])
        @btnText = "Update"
    end
    
    def update
        @ue_arterial_form = UeArterialForm.find(params[:id])
        if @ue_arterial_form.update_attributes(ue_arterial_params)
            flash.alert = "UE Arterial Form Updated"
            redirect_to @ue_arterial_form
        else
            render 'edit'
        end
    end
    
    def destroy
        UeArterialForm.find(params[:id]).destroy
        flash.alert = "UE Arterial Form Deleted"
        redirect_to root_url
    end
    
private
    def ue_arterial_params
        params.require(:ue_arterial_form).permit(
                                                    :vasDisease, 
                                                    :smoking, 
                                                    :heartDisease, 
                                                    :meds, 
                                                    :injury, 
                                                    :prevSurgery, 
                                                    :diabetes, 
                                                    :otherHistory, 
                                                    :claudication, 
                                                    :numbness, 
                                                    :pain, 
                                                    :colorChange, 
                                                    :otherSymptoms, 
                                                    :subclavianPSVRight, 
                                                    :subclavianPSVLeft, 
                                                    :subclavianEDVRight, 
                                                    :subclavianEDVLeft, 
                                                    :axillaryPSVRight, 
                                                    :axillaryPSVLeft, 
                                                    :axillaryEDVRight, 
                                                    :axillaryEDVLeft,
                                                    :brachialPSVRight, 
                                                    :brachialPSVLeft, 
                                                    :brachialEDVRight, 
                                                    :brachialEDVLeft, 
                                                    :radialPSVRight, 
                                                    :radialPSVLeft, 
                                                    :radialEDVRight, 
                                                    :radialEDVLeft, 
                                                    :ulnarPSVRight, 
                                                    :ulnarPSVLeft, 
                                                    :ulnarEDVRight, 
                                                    :ulnarEDVLeft, 
                                                    :palmarPSVRight, 
                                                    :palmarPSVLeft,
                                                    :palmarEDVRight, 
                                                    :palmarEDVLeft,
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
