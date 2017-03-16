class CarotidForm < ActiveRecord::Base
    belongs_to :form
    belongs_to :bruit
    accepts_nested_attributes_for :form
    accepts_nested_attributes_for :bruit
end