class CarotidFormsController < ApplicationController
    
    def new
        @carotid_form = CarotidForm.new
    end
    
    def create
        @carotid_form = CarotidForm.new(carotid_params)
        if(@carotid_form.save)
            flash[:success] = "Carotid Form Created Succesfully"
            redirect_to @carotid_form
        else
            render 'new'
        end
    end
    
    def show
        @carotid_form = CarotidForm.find(params[:id])
    end
    
    def index
        @page_title = "All Carotid Forms"
        @carotid_forms = current_user.carotid_forms
    end
    
    def edit
        @page_title = "Edit Carotid Form"
        @carotid_form = CarotidForm.find(params[:id])
    end
    
    def update
        if @carotid_form.update_attributes(carotid_params)
            flash.alert = "Carotid Form Updated"
            redirect_to @carotid_form
        else
            render 'edit'
        end
    end
    
    def destroy
        CarotidForm.find(params[:id]).destroy
        flash.alert = "Carotid Form Deleted"
        redirect_to current_user
    end
    
private
    def carotid_params
        params.require(:carotid_form).permit(   
                                                :pulseCarotidRight,
                                                :pulseCarotidLeft,
                                                :pulseTemporalRight,
                                                :pulseTemporalLeft,
                                                :pulseRadialRight,
                                                :pulseRadialLeft,
                                                :bruitsDisNeckRight,
                                                :bruitsDisNeckLeft,
                                                :bruitsMidNeckRight,
                                                :bruitsMidNeckLeft,
                                                :bruitsProxNeckRight,
                                                :bruitsProxNeckLeft,
                                                :bruitsSupraRight,
                                                :bruitsSupraLeft,
                                                :bruitsChestRight,
                                                :bruitsChestLeft,
                                                :vertebralReversalRight,
                                                :vertebralReversalLeft,
                                                :ophthalmicReversalRight,
                                                :ophthalmicReversalLeft,
                                                :dicaPSVRight,
                                                :dicaPSVLeft,
                                                :dicaEDVRight,
                                                :dicaEDVLeft,
                                                :micaPSVRight,
                                                :micaPSVLeft,
                                                :micaEDVRight,
                                                :micaEDVLeft,
                                                :picaPSVRight,
                                                :picaPSVLeft,
                                                :picaEDVRight,
                                                :picaEDVLeft,
                                                :ecaPSVRight,
                                                :ecaPSVLeft,
                                                :ecaEDVRight,
                                                :ecaEDVLeft,
                                                :dccaPSVRight,
                                                :dccaPSVLeft,
                                                :dccaEDVRight,
                                                :dccaEDVLeft,
                                                :pccaPSVRight,
                                                :pccaPSVLeft,
                                                :pccaEDVRight,
                                                :pccaEDVLeft,
                                                :vertebralPSVRight,
                                                :vertebralPSVLeft,
                                                :vertebralEDVRight,
                                                :vertebralEDVLeft,
                                                :subclavianPSVRight,
                                                :subclavianPSVLeft,
                                                :subclavianEDVRight,
                                                :subclavianEDVLeft)
    end
    
    def correct_user
        @user = User.find(params[:id])
        redirect_to(root_url) unless current_user?@user
    end
end
