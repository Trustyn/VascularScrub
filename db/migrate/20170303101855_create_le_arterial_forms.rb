class CreateLeArterialForms < ActiveRecord::Migration
  def change
    create_table :le_arterial_forms do |t|
      t.references :form, index: true, foreign_key: true
      t.float :ankleBPRight
      t.float :ankleBPLeft
      t.boolean :indications
      t.boolean :prevSurgery
      t.boolean :vascularDisease
      t.boolean :heartDisease
      t.boolean :smoking
      t.boolean :injury
      t.boolean :medications
      t.string :otherHistory
      t.boolean :claudication
      t.boolean :restPain
      t.boolean :ulcerations
      t.boolean :gangrene
      t.string :otherSymptoms
      t.float :abiRight
      t.float :abiLeft
      t.float :commFemoralProxRight
      t.float :commFemoralProxLeft
      t.float :commFemoralDistRight
      t.float :commFemoralDistLeft
      t.float :supFemoralProxRight
      t.float :supFemoralProxLeft
      t.float :supFemoralDistRight
      t.float :supFemoralDistLeft
      t.float :deepFemoralProxRight
      t.float :deepFemoralProxLeft
      t.float :deepFemoralDistRight
      t.float :deepFemoralDistLeft
      t.float :poplitealProxRight
      t.float :poplitealProxLeft
      t.float :poplitealDistRight
      t.float :poplitealDistLeft
      t.float :antTibialProxRight
      t.float :antTibialProxLeft
      t.float :antTibialDistRight
      t.float :antTibialDistLeft
      t.float :postTibialProxRight
      t.float :postTibialProxLeft
      t.float :postTibialDistRight
      t.float :postTibialDistLeft
      t.float :peronealProxRight
      t.float :peronealProxLeft
      t.float :peronealDistRight
      t.float :peronealDistLeft
      t.float :otherProxRight
      t.float :otherProxLeft
      t.float :otherDistRight
      t.float :otherDistLeft
      t.timestamps null: false
    end
  end
end
