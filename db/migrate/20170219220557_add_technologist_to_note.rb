class AddTechnologistToNote < ActiveRecord::Migration
  def change
    add_reference :notes, :technologist, index: true, foreign_key: true
    add_reference :notes, :form, index: true, foreign_key: true
  end
end
