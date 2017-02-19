class Form < ActiveRecord::Base
  belongs_to :technologists
  belongs_to :user
end
