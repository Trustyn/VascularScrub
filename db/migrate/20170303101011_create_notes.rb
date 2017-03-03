class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      
      t.string :name
      t.string :content
      t.references :technologists, indes: true, foreign_key: true
      t.references :forms, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
