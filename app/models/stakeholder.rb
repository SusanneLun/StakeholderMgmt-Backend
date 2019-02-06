class Stakeholder < ApplicationRecord
  # model Association
  has_many :ratings, dependent: :destroy
  has_many :project_stakeholders, dependent: :destroy
  has_many :projects, through: :project_stakeholders

  # validations
  # validates_presence_of :title, :created_by
end
