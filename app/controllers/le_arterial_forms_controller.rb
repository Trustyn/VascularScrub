class LeArterialFormsController < ApplicationController
    
    def new
        @le_arterial_form = LeArterialForm.new
        @le_arterial_form.form = Form.new
        @le_arterial_form.form.technologist = Technologist.new
    end
    
    def create
        @le_arterial_form = LeArterialForm.new(le_arterial_params)
        if(@le_arterial_form.save)
            flash[:success] = LE Arterial Form Created Succesfully
            redirect_to @le_arterial_form
        else
            render 'new'
        end
    end
    
    def show
        @le_arterial_form = LeArterialForm.find(params[:id])
    end
    
    def index
        @page_title = All LE Arterial Forms
        @le_arterial_forms = current_user.le_arterial_forms
    end
    
    def edit
        @page_title = Edit LE Arterial Form
        @le_arterial_form = LeArterialForm.find(params[:id])
    end
    
    def update
        if @le_arterial_form.update_attributes(le_arterial_params)
            flash.alert = LE Arterial Form Updated
            redirect_to @le_arterial_form
        else
            render 'edit'
        end
    end
    
    def destroy
        LeArterialForm.find(params[:id]).destroy
        flash.alert = LE Arterial Form Deleted
        redirect_to current_user
    end
    
private
    def le_arterial_params
        params.require(:le_arterial_form).permit(   :forms [:age,
                                                            :gender,
                                                            :technologist_id,
                                                            :bpRight,
                                                            :bpLeft,
                                                            :history,
                                                            :symptoms,
                                                            :prelimResults,
                                                            :patientResults],
                                                            :ankleBPRight,
                                                            :ankleBPLeft,
                                                            :indications,
                                                            :prevSurgery,
                                                            :vascularDisease,
                                                            :heartDisease,
                                                            :smoking,
                                                            :injury,
                                                            :medications,
                                                            :otherHistory,
                                                            :claudication,
                                                            :restPain,
                                                            :ulcerations,
                                                            :gangrene,
                                                            :otherSymptoms,
                                                            :abiRight,
                                                            :abiLeft,
                                                            :commFemoralProxRight,
                                                            :commFemoralProxLeft,
                                                            :commFemoralDistRight,
                                                            :commFemoralDistLeft,
                                                            :supFemoralProxRight,
                                                            :supFemoralProxLeft,
                                                            :supFemoralDistRight,
                                                            :supFemoralDistLeft,
                                                            :deepFemoralProxRight,
                                                            :deepFemoralProxLeft,
                                                            :deepFemoralDistRight,
                                                            :deepFemoralDistLeft,
                                                            :poplitealProxRight,
                                                            :poplitealProxLeft,
                                                            :poplitealDistRight,
                                                            :poplitealDistLeft,
                                                            :antTibialProxRight,
                                                            :antTibialProxLeft,
                                                            :antTibialDistRight,
                                                            :antTibialDistLeft,
                                                            :postTibialProxRight,
                                                            :postTibialProxLeft,
                                                            :postTibialDistRight,
                                                            :postTibialDistLeft,
                                                            :peronealProxRight,
                                                            :peronealProxLeft,
                                                            :peronealDistRight,
                                                            :peronealDistLeft,
                                                            :otherProxRight,
                                                            :otherProxLeft,
                                                            :otherDistRight,
                                                            :otherDistLeft)
    end
    
    def correct_user
        @user = User.find(params[:id])
        redirect_to(root_url) unless current_user?@user
    end
end
