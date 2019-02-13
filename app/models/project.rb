class Project < ApplicationRecord
  has_many :project_stakeholders
  has_many :ratings
  has_many :stakeholders, through: :project_stakeholders
  belongs_to :user
end
