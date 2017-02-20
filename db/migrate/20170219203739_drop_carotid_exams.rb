class DropCarotidExams < ActiveRecord::Migration
  def change
    drop_table :carotid_exams
  end
end
