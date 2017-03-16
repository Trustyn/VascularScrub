class HepaticForm < ActiveRecord::Base
    belongs_to :form
    belongs_to :bruit
    accepts_nested_attributes_for :form, allow_destroy: true
    accepts_nested_attributes_for :bruit
end
