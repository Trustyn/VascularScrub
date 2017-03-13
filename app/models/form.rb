class Form < ActiveRecord::Base
  belongs_to :technologist
  belongs_to :user
  has_many :carotid_forms
  has_many :ue_arterial_forms
  has_many :ue_venous_forms
  has_many :renal_forms
  has_many :hepatic_forms
  has_many :mesenteric_forms
  has_many :le_arterial_forms
  has_many :le_venous_forms
end
