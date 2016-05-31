class CreateTechnologists < ActiveRecord::Migration
  def change
    create_table :technologists do |t|
      t.string :firstname
      t.string :lastname

      t.timestamps null: false
    end
  end
end
