class CreateMesentericForms < ActiveRecord::Migration
  def change
    create_table :mesenteric_forms do |t|
      
      t.boolean :abdominPain
      t.boolean :weightLoss
      t.boolean :chronicDiarrhea
      t.boolean :bowellInfarction
      t.string :otherHistory
      t.float :aortaFastPSV
      t.float :aortaPostPSV
      t.float :aortaFastEDV
      t.float :aortaPostEDV
      t.float :aortaFastRI
      t.float :aortaPostRI
      t.float :celiacOriginFastPSV
      t.float :celiacOriginPostPSV
      t.float :celiacOriginFastEDV
      t.float :celiacOriginPostEDV
      t.float :celiacOriginFastRI
      t.float :celiacOriginPostRI
      t.float :celiacMidFastPSV
      t.float :celiacMidPostPSV
      t.float :celiacMidFastEDV
      t.float :celiacMidPostEDV
      t.float :celiacMidFastRI
      t.float :celiacMidPostRI
      t.float :smaOriginFastPSV
      t.float :smaOriginPostPSV
      t.float :smaOriginFastEDV
      t.float :smaOriginPostEDV
      t.float :smaOriginFastRI
      t.float :smaOriginPostRI
      t.float :smaMidFastPSV
      t.float :smaMidPostPSV
      t.float :smaMidFastEDV
      t.float :smaMidPostEDV
      t.float :smaMidFastRI
      t.float :smaMidPostRI
      t.float :smaDistalFastPSV
      t.float :smaDistalPostPSV
      t.float :smaDistalFastEDV
      t.float :smaDistalPostEDV
      t.float :smaDistalFastRI
      t.float :smaDistalPostRI
      t.float :hepaticFastPSV
      t.float :hepaticPostPSV
      t.float :hepaticFastEDV
      t.float :hepaticPostEDV
      t.float :hepaticFastRI
      t.float :hepaticPostRI
      t.float :splenicFastPSV
      t.float :splenicPostPSV
      t.float :splenicFastEDV
      t.float :splenicPostEDV
      t.float :splenicFastRI
      t.float :splenicPostRI
      t.float :imaFastPSV
      t.float :imaPostPSV
      t.float :imaFastEDV
      t.float :imaPostEDV
      t.float :imaFastRI
      t.float :imaPostRI
      t.timestamps null: false
    end
  end
end
