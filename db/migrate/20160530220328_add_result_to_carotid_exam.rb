class AddResultToCarotidExam < ActiveRecord::Migration
  def change
    add_column :carotid_exams, :patient_result, :text
  end
end
