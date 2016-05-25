class Note < ActiveRecord::Base
  belongs_to :technician
  belongs_to :user
end
