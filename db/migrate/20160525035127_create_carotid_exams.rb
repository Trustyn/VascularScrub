class CreateCarotidExams < ActiveRecord::Migration
  def change
    create_table :carotid_exams do |t|
      
      t.float :blood_pressure_right
      t.float :blood_pressure_left
      t.float :carotid_right
      t.float :carotid_left
      t.float :temporal_right
      t.float :temporal_left
      t.float :radial_right
      t.float :radial_left
      t.integer :neck_distal_right
      t.integer :neck_distal_left
      t.integer :neck_mid_right
      t.integer :neck_mid_left
      t.integer :neck_proximal_right
      t.integer :neck_proximal_left
      t.integer :supraclavicular_right
      t.integer :supraclavicular_left
      t.integer :chest_right
      t.integer :chest_left
      t.boolean :retrograde_right
      t.boolean :retrograde_left
      t.float :eca_right
      t.float :eca_left
      t.float :dica_right
      t.float :dica_left
      t.float :mica_right
      t.float :mica_left
      t.float :pica_right
      t.float :pica_left
      t.float :dcca_right
      t.float :dcca_left
      t.float :mcca_right
      t.float :mcca_left
      t.float :pcca_right
      t.float :pcca_left
      t.float :vertebral_right
      t.float :vertebral_left
      t.float :subclavian_right
      t.float :subclavian_left
      t.text :technologists_preliminary_impression
      t.timestamps null: false
    end
  end
end
