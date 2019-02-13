class Rating < ApplicationRecord
  # model association
  belongs_to :stakeholder
  belongs_to :project

  # validation
  # validates_presence_of :stakeholder_id
  # validates_presence_of :power
  # validates_presence_of :interest
  # validates_presence_of :positivity

end
