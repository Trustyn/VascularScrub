class CreateUeVenousForms < ActiveRecord::Migration
  def change
    create_table :ue_venous_forms do |t|
      t.references :form, index: true, foreign_key: true
      t.boolean :recentEvasiveProc
      t.boolean :recentAVFistula
      t.string :admittingDisease
      t.boolean :surgery
      t.string :otherSurgery
      t.boolean :diabetes
      t.boolean :myocardialInf
      t.boolean :conHeartFailure
      t.string :otherHistory
      t.boolean :pain
      t.boolean :numbness
      t.boolean :colorChange
      t.string :otherSymptoms
      t.string :subclavianWaveformRight
      t.boolean :subclavianCompressionRight
      t.string :subclavianWaveformLeft
      t.boolean :subclavianCompressionLeft
      t.string :axillaryWaveformRight
      t.boolean :axillaryCompressionRight
      t.string :axillaryWaveformLeft
      t.boolean :axillaryCompressionLeft
      t.string :brachialWaveformRight
      t.boolean :brachialCompressionRight
      t.string :brachialWaveformLeft
      t.boolean :brachialCompressionLeft
      t.string :radialWaveformRight
      t.boolean :radialCompressionRight
      t.string :radialWaveformLeft
      t.boolean :radialCompressionLeft
      t.string :ulnarWaveformRight
      t.boolean :ulnarCompressionRight
      t.string :ulnarWaveformLeft
      t.boolean :ulnarCompressionLeft
      t.string :basilicWaveformRight
      t.boolean :basilicCompressionRight
      t.string :basilicWaveformLeft
      t.boolean :basilicCompressionLeft
      t.string :cephalicWaveformRight
      t.boolean :cephalicCompressionRight
      t.string :cephalicWaveformLeft
      t.boolean :cephalicCompressionLeft
      t.string :medCubitalWaveformRight
      t.boolean :medCubitalCompressionRight
      t.string :medCubitalWaveformLeft
      t.boolean :medCubitalCompressionLeft
      t.string :intJugularWaveformRight
      t.boolean :intJugularCompressionRight
      t.string :intJugularWaveformLeft
      t.boolean :intJugularCompressionLeft
      t.timestamps null: false
    end
  end
end
