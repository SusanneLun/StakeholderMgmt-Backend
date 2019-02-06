class ProjectStakeholder < ApplicationRecord
  belongs_to :project
  belongs_to :stakeholder
end
