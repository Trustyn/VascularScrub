class CreateHepaticForms < ActiveRecord::Migration
  def change
    create_table :hepatic_forms do |t|
      t.references :form, index: true, foreign_key: true
      t.boolean :organEnlarge
      t.boolean :portalHyperTension
      t.boolean :cirrhosis
      t.boolean :ascitites
      t.boolean :varices
      t.boolean :shunt
      t.boolean :transplant
      t.boolean :labResults
      t.string :otherHistory
      t.integer :splenicSize
      t.boolean :splenicThrombus
      t.float :splenicVelocity
      t.string :splenicFlowDir
      t.integer :smvSize
      t.boolean :smvThrombus
      t.float :smvVelocity
      t.string :smvFlowDir
      t.integer :portalMainSize
      t.boolean :portalMainThrombus
      t.float :portalMainVelocity
      t.string :portalMainFlowDir
      t.integer :portalRightSize
      t.boolean :portalRightThrombus
      t.float :portalRightVelocity
      t.string :portalRightFlowDir
      t.integer :portalLeftSize
      t.boolean :portalLeftThrombus
      t.float :portalLeftVelocity
      t.string :portalLeftFlowDir
      t.integer :hepaticMainSize
      t.boolean :hepaticMainThrombus
      t.float :hepaticMainVelocity
      t.string :hepaticMainFlowDir
      t.integer :hepaticRightSize
      t.boolean :hepaticRightThrombus
      t.float :hepaticRightVelocity
      t.string :hepaticRightFlowDir
      t.integer :hepaticLeftSize
      t.boolean :hepaticLeftThrombus
      t.float :hepaticLeftVelocity
      t.string :hepaticLeftFlowDir
      t.integer :ivcSize
      t.boolean :ivcThrombus
      t.float :ivcVelocity
      t.string :ivcFlowDir
      t.integer :renalRightSize
      t.boolean :renalRightThrombus
      t.float :renalRightVelocity
      t.string :renalRightFlowDir
      t.integer :renalLeftSize
      t.boolean :renalLeftThrombus
      t.float :renalLeftVelocity
      t.string :renalLeftFlowDir
      t.integer :liverSize
      t.boolean :liverThrombus
      t.float :liverVelocity
      t.string :liverFlowDir
      t.integer :spleenSize
      t.boolean :spleenThrombus
      t.float :spleenVelocity
      t.string :spleenFlowDir
      t.timestamps null: false
    end
  end
end
