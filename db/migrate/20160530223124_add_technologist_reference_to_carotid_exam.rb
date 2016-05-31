class AddTechnologistReferenceToCarotidExam < ActiveRecord::Migration
  def change
    add_reference :carotid_exams, :technologist, index: true, foreign_key: true
  end
end
