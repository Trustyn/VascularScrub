class CreateHepaticForms < ActiveRecord::Migration
  def change
    create_table :hepatic_forms do |t|

      t.timestamps null: false
    end
  end
end
