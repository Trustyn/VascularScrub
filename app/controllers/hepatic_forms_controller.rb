class HepaticFormsController < ApplicationController
def new
        @hepatic_form = HepaticForm.new
        @hepatic_form.form = Form.new
        @hepatic_form.form.technologist = Technologist.new
    end
    
    def create
        @hepatic_form = HepaticForm.new(hepatic_params)
        if(@hepatic_form.save)
            flash[:success] = "Hepatic Form Created Succesfully"
            redirect_to @hepatic_form
        else
            render 'new'
        end
    end
    
    def show
        @hepatic_form = HepaticForm.find(params[:id])
    end
    
    def index
        @page_title = "All hepatic Forms"
        @hepatic_forms = current_user.hepatic_forms
    end
    
    def edit
        @page_title = "Edit hepatic Form"
        @hepatic_form = HepaticForm.find(params[:id])
    end
    
    def update
        if @hepatic_form.update_attributes(hepatic_params)
            flash.alert = "Hepatic Form Updated"
            redirect_to @hepatic_form
        else
            render 'edit'
        end
    end
    
    def destroy
        HepaticForm.find(params[:id]).destroy
        flash.alert = "Hepatic Form Deleted"
        redirect_to current_user
    end
    
private
    def hepatic_params
        params.require(:hepatic_form).permit(   :forms [:age,
                                                :gender,
                                                :technologist_id,
                                                :bpRight,
                                                :bpLeft,
                                                :history,
                                                :symptoms,
                                                :prelimResults,
                                                :patientResults],
                                                :organEnlarge,
                                                :portalHyperTension,
                                                :cirrhosis,
                                                :ascitites,
                                                :varices,
                                                :shunt,
                                                :transplant,
                                                :labResults,
                                                :otherHistory,
                                                :splenicSize,
                                                :splenicThrombus,
                                                :splenicVelocity,
                                                :splenicFlowDir,
                                                :smvSize,
                                                :smvThrombus,
                                                :smvVelocity,
                                                :smvFlowDir,
                                                :portalMainSize,
                                                :portalMainThrombus,
                                                :portalMainVelocity,
                                                :portalMainFlowDir,
                                                :portalRightSize,
                                                :portalRightThrombus,
                                                :portalRightVelocity,
                                                :portalRightFlowDir,
                                                :portalLeftSize,
                                                :portalLeftThrombus,
                                                :portalLeftVelocity,
                                                :portalLeftFlowDir,
                                                :hepaticMainSize,
                                                :hepaticMainThrombus,
                                                :hepaticMainVelocity,
                                                :hepaticMainFlowDir,
                                                :hepaticRightSize,
                                                :hepaticRightThrombus,
                                                :hepaticRightVelocity,
                                                :hepaticRightFlowDir,
                                                :hepaticLeftSize,
                                                :hepaticLeftThrombus,
                                                :hepaticLeftVelocity,
                                                :hepaticLeftFlowDir,
                                                :ivcSize,
                                                :ivcThrombus,
                                                :ivcVelocity,
                                                :ivcFlowDir,
                                                :renalRightSize,
                                                :renalRightThrombus,
                                                :renalRightVelocity,
                                                :renalRightFlowDir,
                                                :renalLeftSize,
                                                :renalLeftThrombus,
                                                :renalLeftVelocity,
                                                :renalLeftFlowDir,
                                                :liverSize,
                                                :liverThrombus,
                                                :liverVelocity,
                                                :liverFlowDir,
                                                :spleenSize,
                                                :spleenThrombus,
                                                :spleenVelocity,
                                                :spleenFlowDir)
    end
    
    def correct_user
        @user = User.find(params[:id])
        redirect_to(root_url) unless current_user?@user
    end
end
