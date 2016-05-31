class CarotidExamsController < ApplicationController

    def new
        @carotid_exam = CarotidExam.new
    end

    def create
        @carotid_exam = CarotidExam.new(carotid_params)
        if(@carotid_exam.save)
            flash[:success] = "Exam created"
            redirect_to @carotid_exam
        else
            render 'new'
        end
    end
    
    def show
        @carotid_exam = CarotidExam.find(params[:id])
    end

private
    def carotid_params
        params.require(:carotid_exam).permit(   :age,
                                                :gender,
                                                :technologist_id,
                                                :blood_pressure_right,
                                                :blood_pressure_left,
                                                :carotid_right,
                                                :carotid_left,
                                                :temporal_right,
                                                :temporal_left,
                                                :radial_right,
                                                :radial_left,
                                                :neck_distal_right,
                                                :neck_distal_left,
                                                :neck_mid_right,
                                                :neck_mid_left,
                                                :neck_proximal_right,
                                                :neck_proximal_left,
                                                :supraclavicular_right,
                                                :supraclavicular_left,
                                                :chest_right,
                                                :chest_left,
                                                :retrograde_right,
                                                :retrograde_left,
                                                :eca_right,
                                                :eca_left,
                                                :dica_right,
                                                :dica_left,
                                                :mica_right,
                                                :mica_left,
                                                :pica_right,
                                                :pica_left,
                                                :dcca_right,
                                                :dcca_left,
                                                :mcca_right,
                                                :mcca_left,
                                                :pcca_right,
                                                :pcca_left,
                                                :vertebral_right,
                                                :vertebral_left,
                                                :subclavian_right,
                                                :subclavian_left,
                                                :technologists_preliminary_impression,
                                                :patient_result)
    end
end
