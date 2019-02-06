class Project < ApplicationRecord
  has_many :project_stakeholders
  has_many :stakeholders, through: :project_stakeholders
end
