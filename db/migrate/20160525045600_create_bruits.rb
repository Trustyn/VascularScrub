class CreateBruits < ActiveRecord::Migration
  def change
    create_table :bruits do |t|
      t.string :volume
      t.timestamps null: false
    end
  end
end
