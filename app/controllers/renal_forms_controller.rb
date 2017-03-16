class RenalFormsController < ApplicationController
    
    def new
        @renal_form = current_user.renal_forms.build
        @renal_form.form = Form.new
        @btnText = "Create"
    end
    
    def create
        @renal_form = current_user.renal_forms.build(renal_params)
        if(@renal_form.save)
            flash[:success] = "Renal Form Created"
            redirect_to @renal_form
        else
            render 'new'
        end
    end
    
    def show
        @renal_form = RenalForm.find(params[:id])
    end
    
    def index
        @page_title = "All Renal Forms"
        @renal_forms = RenalForm.all
    end
    
    def edit
        @page_title = "Edit Renal Form"
        @renal_form = RenalForm.find(params[:id])
        @btnText = "Update"
    end
    
    def update
        @carotid_form = CarotidForm.find(params[:id])
        if @renal_form.update_attributes(renal_params)
            flash.alert = "Renal Form Updated"
            redirect_to @renal_form
        else
            render 'edit'
        end
    end
    
    def destroy
        RenalForm.find(params[:id]).destroy
        flash.alert = "Renal Form Deleted"
        redirect_to current_user
    end
    
private
    def renal_params
        params.require(:renal_form).permit(   :forms [:age,
                                                    :gender,
                                                    :technologist_id,
                                                    :bpRight,
                                                    :bpLeft,
                                                    :history,
                                                    :symptoms,
                                                    :prelimResults,
                                                    :patientResults],
                                                    :hypertension,
                                                    :atherosclerosis,
                                                    :renalStenosis,
                                                    :renalFailure,
                                                    :graft,
                                                    :transplant,
                                                    :thrombosis,
                                                    :malignancy,
                                                    :otherHistory,
                                                    :arteryRightPSV,
                                                    :arteryLeftPSV,
                                                    :arteryRightEDV,
                                                    :arteryLeftEDV,
                                                    :arteryRightRI,
                                                    :arteryLeftRI,
                                                    :arteryRightAT,
                                                    :arteryLeftAT,
                                                    :arteryRightDS,
                                                    :arteryLeftDS,
                                                    :arteryRightRAR,
                                                    :arteryLeftRAR,
                                                    :aortaRightPSV,
                                                    :aortaLeftPSV,
                                                    :aortaRightEDV,
                                                    :aortaLeftEDV,
                                                    :aortaRightRI,
                                                    :aortaLeftRI,
                                                    :aortaRightAT,
                                                    :aortaLeftAT,
                                                    :aortaRightDS,
                                                    :aortaLeftDS,
                                                    :aortaRightRAR,
                                                    :aortaLeftRAR,
                                                    :renalAOrginRightPSV,
                                                    :renalAOrginLeftPSV,
                                                    :renalAOrginRightEDV,
                                                    :renalAOrginLeftEDV,
                                                    :renalAOrginRightRI,
                                                    :renalAOrginLeftRI,
                                                    :renalAOrginRightAT,
                                                    :renalAOrginLeftAT,
                                                    :renalAOrginRightDS,
                                                    :renalAOrginLeftDS,
                                                    :renalAOrginRightRAR,
                                                    :renalAOrginLeftRAR,
                                                    :renalAProxRightPSV,
                                                    :renalAProxLeftPSV,
                                                    :renalAProxRightEDV,
                                                    :renalAProxLeftEDV,
                                                    :renalAProxRightRI,
                                                    :renalAProxLeftRI,
                                                    :renalAProxRightAT,
                                                    :renalAProxLeftAT,
                                                    :renalAProxRightDS,
                                                    :renalAProxLeftDS,
                                                    :renalAProxRightRAR,
                                                    :renalAProxLeftRAR,
                                                    :renalAMidRightPSV,
                                                    :renalAMidLeftPSV,
                                                    :renalAMidRightEDV,
                                                    :renalAMidLeftEDV,
                                                    :renalAMidRightRI,
                                                    :renalAMidLeftRI,
                                                    :renalAMidRightAT,
                                                    :renalAMidLeftAT,
                                                    :renalAMidRightDS,
                                                    :renalAMidLeftDS,
                                                    :renalAMidRightRAR,
                                                    :renalAMidLeftRAR,
                                                    :renalADistRightPSV,
                                                    :renalADistLeftPSV,
                                                    :renalADistRightEDV,
                                                    :renalADistLeftEDV,
                                                    :renalADistRightRI,
                                                    :renalADistLeftRI,
                                                    :renalADistRightAT,
                                                    :renalADistLeftAT,
                                                    :renalADistRightDS,
                                                    :renalADistLeftDS,
                                                    :renalADistRightRAR,
                                                    :renalADistLeftRAR,
                                                    :parenchymaRightPSV,
                                                    :parenchymaLeftPSV,
                                                    :parenchymaRightEDV,
                                                    :parenchymaLeftEDV,
                                                    :parenchymaRightRI,
                                                    :parenchymaLeftRI,
                                                    :parenchymaRightAT,
                                                    :parenchymaLeftAT,
                                                    :parenchymaRightDS,
                                                    :parenchymaLeftDS,
                                                    :parenchymaRightRAR,
                                                    :parenchymaLeftRAR,
                                                    :interlobularRightPSV,
                                                    :interlobularLeftPSV,
                                                    :interlobularRightEDV,
                                                    :interlobularLeftEDV,
                                                    :interlobularRightRI,
                                                    :interlobularLeftRI,
                                                    :interlobularRightAT,
                                                    :interlobularLeftAT,
                                                    :interlobularRightDS,
                                                    :interlobularLeftDS,
                                                    :interlobularRightRAR,
                                                    :interlobularLeftRAR,
                                                    :arcuateRightPSV,
                                                    :arcuateLeftPSV,
                                                    :arcuateRightEDV,
                                                    :arcuateLeftEDV,
                                                    :arcuateRightRI,
                                                    :arcuateLeftRI,
                                                    :arcuateRightAT,
                                                    :arcuateLeftAT,
                                                    :arcuateRightDS,
                                                    :arcuateLeftDS,
                                                    :arcuateRightRAR,
                                                    :arcuateLeftRAR,
                                                    :renalVeinRightPSV,
                                                    :renalVeinLeftPSV,
                                                    :renalVeinRightEDV,
                                                    :renalVeinLeftEDV,
                                                    :renalVeinRightRI,
                                                    :renalVeinLeftRI,
                                                    :renalVeinRightAT,
                                                    :renalVeinLeftAT,
                                                    :renalVeinRightDS,
                                                    :renalVeinLeftDS,
                                                    :renalVeinRightRAR,
                                                    :renalVeinLeftRAR,
                                                    :renalSizeRightPSV,
                                                    :renalSizeLeftPSV,
                                                    :renalSizeRightEDV,
                                                    :renalSizeLeftEDV,
                                                    :renalSizeRightRI,
                                                    :renalSizeLeftRI,
                                                    :renalSizeRightAT,
                                                    :renalSizeLeftAT,
                                                    :renalSizeRightDS,
                                                    :renalSizeLeftDS,
                                                    :renalSizeRightRAR,
                                                    :renalSizeLeftRAR)
    end
    
    def correct_user
        @user = User.find(params[:id])
        redirect_to(root_url) unless current_user?@user
    end
end
