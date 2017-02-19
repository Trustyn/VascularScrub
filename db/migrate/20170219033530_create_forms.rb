class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.references :technologists, index: true, foreign_key: true
      t.integer :age
      t.string :gender
      t.float :bpRight
      t.float :bpLeft
      t.string :history
      t.string :symptoms
      t.string :prelimResults
      t.string :patientResults

      t.timestamps null: false
    end
  end
end
