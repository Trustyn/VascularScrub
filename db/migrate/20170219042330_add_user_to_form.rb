class AddUserToForm < ActiveRecord::Migration
  def change
    add_reference :forms, :user, index: true, foreign_key: true
  end
end
