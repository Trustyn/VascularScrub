class AddAgeAndGenderToCarotidExam < ActiveRecord::Migration
  def change
    add_column :carotid_exams, :age, :integer
    add_column :carotid_exams, :gender, :string
  end
end
