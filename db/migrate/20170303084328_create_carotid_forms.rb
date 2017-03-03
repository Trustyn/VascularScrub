class CreateCarotidForms < ActiveRecord::Migration
  def change
    create_table :carotid_forms do |t|
      
      t.float :pulseCarotidRight
      t.float :pulseCarotidLeft
      t.float :pulseTemporalRight
      t.float :pulseTemporalLeft
      t.float :pulseRadialRight
      t.float :pulseRadialLeft
      t.float :bruitsDisNeckRight
      t.float :bruitsDisNeckLeft
      t.float :bruitsMidNeckRight
      t.float :bruitsMidNeckLeft
      t.float :bruitsProxNeckRight
      t.float :bruitsProxNeckLeft
      t.float :bruitsSupraRight
      t.float :bruitsSupraLeft
      t.float :bruitsChestRight
      t.float :bruitsChestLeft
      t.float :vertebralReversalRight
      t.float :vertebralReversalLeft
      t.float :ophthalmicReversalRight
      t.float :ophthalmicReversalLeft
      t.float :dicaPSVRight
      t.float :dicaPSVLeft
      t.float :dicaEDVRight
      t.float :dicaEDVLeft
      t.float :micaPSVRight
      t.float :micaPSVLeft
      t.float :micaEDVRight
      t.float :micaEDVLeft
      t.float :picaPSVRight
      t.float :picaPSVLeft
      t.float :picaEDVRight
      t.float :picaEDVLeft
      t.float :ecaPSVRight
      t.float :ecaPSVLeft
      t.float :ecaEDVRight
      t.float :ecaEDVLeft
      t.float :dccaPSVRight
      t.float :dccaPSVLeft
      t.float :dccaEDVRight
      t.float :dccaEDVLeft
      t.float :pccaPSVRight
      t.float :pccaPSVLeft
      t.float :pccaEDVRight
      t.float :pccaEDVLeft
      t.float :vertebralPSVRight
      t.float :vertebralPSVLeft
      t.float :vertebralEDVRight
      t.float :vertebralEDVLeft
      t.float :subclavianPSVRight
      t.float :subclavianPSVLeft
      t.float :subclavianEDVRight
      t.float :subclavianEDVLeft
      t.timestamps null: false
    end
  end
end
