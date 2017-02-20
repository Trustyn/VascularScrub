class CreateUeArterialForms < ActiveRecord::Migration
  def change
    create_table :ue_arterial_forms do |t|
      
      t.boolean :vasDisease
      t.boolean :smoking
      t.boolean :heartDisease
      t.boolean :meds
      t.boolean :injury
      t.boolean :prevSurgery
      t.boolean :diabetes
      t.string :otherHistory
      t.boolean :claudication
      t.boolean :numbness
      t.boolean :pain
      t.boolean :colorChange
      t.string :otherSymptoms
      t.float :subclavianPSVRight
      t.float :subclavianPSVLeft
      t.float :subclavianEDVRight
      t.float :subclavianEDVLeft
      t.float :axillaryPSVRight
      t.float :axillaryPSVLeft
      t.float :axillaryEDVRight
      t.float :axillaryEDVLeft
      t.float :brachialPSVRight
      t.float :brachialPSVLeft
      t.float :brachialEDVRight
      t.float :brachialEDVLeft
      t.float :radialPSVRight
      t.float :radialPSVLeft
      t.float :radialEDVRight
      t.float :radialEDVLeft
      t.float :ulnarPSVRight
      t.float :ulnarPSVLeft
      t.float :ulnarEDVRight
      t.float :ulnarEDVLeft
      t.float :palmarPSVRight
      t.float :palmarPSVLeft
      t.float :palmarEDVRight
      t.float :palmarEDVLeft
      
      t.timestamps null: false
    end
  end
end
