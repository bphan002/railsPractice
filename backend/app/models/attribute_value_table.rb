class AttributeValueTable < ApplicationRecord
  belongs_to :patient
  belongs_to :visit
end
