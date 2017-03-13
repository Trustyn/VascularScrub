class MesentericFormsController < ApplicationController
    
    def new
        @mesenteric_form = MesentericForm.new
        @mesenteric_form.form = Form.new
        @mesenteric_form.form.technologist = Technologist.new
    end
    
    def create
        @mesenteric_form = MesentericForm.new(mesenteric_params)
        if(@mesenteric_form.save)
            flash[:success] = "Mesenteric Form Created Succesfully"
            redirect_to @mesenteric_form
        else
            render 'new'
        end
    end
    
    def show
        @mesenteric_form = MesentericForm.find(params[:id])
    end
    
    def index
        @page_title = "All Mesenteric Forms"
        @mesenteric_forms = current_user.mesenteric_forms
    end
    
    def edit
        @page_title = "Edit Mesenteric Form"
        @mesenteric_form = MesentericForm.find(params[:id])
    end
    
    def update
        if @mesenteric_form.update_attributes(mesenteric_params)
            flash.alert = "Mesenteric Form Updated"
            redirect_to @mesenteric_form
        else
            render 'edit'
        end
    end
    
    def destroy
        MesentericForm.find(params[:id]).destroy
        flash.alert = "Mesenteric Form Deleted"
        redirect_to current_user
    end
    
private
    def mesenteric_params
        params.require(:mesenteric_form).permit(   :forms [:age,
                                                        :gender,
                                                        :technologist_id,
                                                        :bpRight,
                                                        :bpLeft,
                                                        :history,
                                                        :symptoms,
                                                        :prelimResults,
                                                        :patientResults],
                                                        :abdominPain,
                                                        :weightLoss,
                                                        :chronicDiarrhea,
                                                        :bowellInfarction,
                                                        :otherHistory,
                                                        :aortaFastPSV,
                                                        :aortaPostPSV,
                                                        :aortaFastEDV,
                                                        :aortaPostEDV,
                                                        :aortaFastRI,
                                                        :aortaPostRI,
                                                        :celiacOriginFastPSV,
                                                        :celiacOriginPostPSV,
                                                        :celiacOriginFastEDV,
                                                        :celiacOriginPostEDV,
                                                        :celiacOriginFastRI,
                                                        :celiacOriginPostRI,
                                                        :celiacMidFastPSV,
                                                        :celiacMidPostPSV,
                                                        :celiacMidFastEDV,
                                                        :celiacMidPostEDV,
                                                        :celiacMidFastRI,
                                                        :celiacMidPostRI,
                                                        :smaOriginFastPSV,
                                                        :smaOriginPostPSV,
                                                        :smaOriginFastEDV,
                                                        :smaOriginPostEDV,
                                                        :smaOriginFastRI,
                                                        :smaOriginPostRI,
                                                        :smaMidFastPSV,
                                                        :smaMidPostPSV,
                                                        :smaMidFastEDV,
                                                        :smaMidPostEDV,
                                                        :smaMidFastRI,
                                                        :smaMidPostRI,
                                                        :smaDistalFastPSV,
                                                        :smaDistalPostPSV,
                                                        :smaDistalFastEDV,
                                                        :smaDistalPostEDV,
                                                        :smaDistalFastRI,
                                                        :smaDistalPostRI,
                                                        :hepaticFastPSV,
                                                        :hepaticPostPSV,
                                                        :hepaticFastEDV,
                                                        :hepaticPostEDV,
                                                        :hepaticFastRI,
                                                        :hepaticPostRI,
                                                        :splenicFastPSV,
                                                        :splenicPostPSV,
                                                        :splenicFastEDV,
                                                        :splenicPostEDV,
                                                        :splenicFastRI,
                                                        :splenicPostRI,
                                                        :imaFastPSV,
                                                        :imaPostPSV,
                                                        :imaFastEDV,
                                                        :imaPostEDV,
                                                        :imaFastRI,
                                                        :imaPostRI)
    end
    
    def correct_user
        @user = User.find(params[:id])
        redirect_to(root_url) unless current_user?@user
    end
end
