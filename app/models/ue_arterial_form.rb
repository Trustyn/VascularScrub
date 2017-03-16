class UeArterialForm < ActiveRecord::Base
    belongs_to :form
    accepts_nested_attributes_for :form
end
