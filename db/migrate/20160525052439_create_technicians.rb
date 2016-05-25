class CreateTechnicians < ActiveRecord::Migration
  def change
    create_table :technicians do |t|
      t.string :firstname
      t.string :lastname

      t.timestamps null: false
    end
  end
end
