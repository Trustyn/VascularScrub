class CreateLeVenousForms < ActiveRecord::Migration
  def change
    create_table :le_venous_forms do |t|
      t.references :form, index: true, foreign_key: true
      t.references :bruit, index: true, foreign_key: true
      t.string :admittingDX
      t.boolean :pulEmb
      t.boolean :dvt
      t.string :otherSurgery
      t.boolean :medications
      t.boolean :commFemoralRight
      t.boolean :commFemoralLeft
      t.boolean :commFemoralAcuteRight
      t.boolean :commFemoralAcuteLeft
      t.boolean :supFemoralRight
      t.boolean :supFemoralLeft
      t.boolean :supFemoralAcuteRight
      t.boolean :supFemoralAcuteLeft
      t.boolean :poplitealRight
      t.boolean :poplitealLeft
      t.boolean :poplitealAcuteRight
      t.boolean :poplitealAcuteLeft
      t.boolean :postTibialRight
      t.boolean :postTibialLeft
      t.boolean :postTibialAcuteRight
      t.boolean :postTibialAcuteLeft
      t.boolean :peronealRight
      t.boolean :peronealLeft
      t.boolean :peronealAcuteRight
      t.boolean :peronealAcuteLeft
      t.timestamps null: false
    end
  end
end
