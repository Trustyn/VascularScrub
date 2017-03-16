class UeVenousFormsController < ApplicationController
    
    def new
        @ue_venous_form = current_user.ue_venous_forms.build
        @ue_venous_form.form = Form.new
        @btnText = "Create"
    end
    
    def create
        @ue_venous_form = current_user.ue_venous_forms.build(ue_venous_params)
        if(@ue_venous_form.save)
            flash[:success] = "UE Venous Form Created"
            redirect_to @ue_venous_form
        else
            render 'new'
        end
    end
    
    def show
        @ue_venous_form = UeVenousForm.find(params[:id])
    end
    
    def index
        @page_title = "All UE Venous Forms"
        @ue_venous_forms = UeVenousForm.all
    end
    
    def edit
        @page_title = "Edit UE Venous Form"
        @ue_venous_form = UeVenousForm.find(params[:id])
        @btnText = "Update"
    end
    
    def update
        @ue_venous_form = UeVenousForm.find(params[:id])
        if @ue_venous_form.update_attributes(ue_venous_params)
            flash.alert = "UE Venous Form Updated"
            redirect_to @ue_venous_form
        else
            render 'edit'
        end
    end
    
    def destroy
        UeVenousForm.find(params[:id]).destroy
        flash.alert = "UE Venous Form Deleted"
        redirect_to current_user
    end
    
private
    def ue_venous_params
        params.require(:ue_venous_form).permit(   :forms [:age,
                                                        :gender,
                                                        :technologist_id,
                                                        :bpRight,
                                                        :bpLeft,
                                                        :history,
                                                        :symptoms,
                                                        :prelimResults,
                                                        :patientResults],
                                                        :recentEvasiveProc,
                                                        :recentAVFistula,
                                                        :admittingDisease,
                                                        :surgery,
                                                        :otherSurgery,
                                                        :diabetes,
                                                        :myocardialInf,
                                                        :conHeartFailure,
                                                        :otherHistory,
                                                        :pain,
                                                        :numbness,
                                                        :colorChange,
                                                        :otherSymptoms,
                                                        :subclavianWaveformRight,
                                                        :subclavianCompressionRight,
                                                        :subclavianWaveformLeft,
                                                        :subclavianCompressionLeft,
                                                        :axillaryWaveformRight,
                                                        :axillaryCompressionRight,
                                                        :axillaryWaveformLeft,
                                                        :axillaryCompressionLeft,
                                                        :brachialWaveformRight,
                                                        :brachialCompressionRight,
                                                        :brachialWaveformLeft,
                                                        :brachialCompressionLeft,
                                                        :radialWaveformRight,
                                                        :radialCompressionRight,
                                                        :radialWaveformLeft,
                                                        :radialCompressionLeft,
                                                        :ulnarWaveformRight,
                                                        :ulnarCompressionRight,
                                                        :ulnarWaveformLeft,
                                                        :ulnarCompressionLeft,
                                                        :basilicWaveformRight,
                                                        :basilicCompressionRight,
                                                        :basilicWaveformLeft,
                                                        :basilicCompressionLeft,
                                                        :cephalicWaveformRight,
                                                        :cephalicCompressionRight,
                                                        :cephalicWaveformLeft,
                                                        :cephalicCompressionLeft,
                                                        :medCubitalWaveformRight,
                                                        :medCubitalCompressionRight,
                                                        :medCubitalWaveformLeft,
                                                        :medCubitalCompressionLeft,
                                                        :intJugularWaveformRight,
                                                        :intJugularCompressionRight,
                                                        :intJugularWaveformLeft,
                                                        :intJugularCompressionLeft)
    end
    
    def correct_user
        @user = User.find(params[:id])
        redirect_to(root_url) unless current_user?@user
    end
end
