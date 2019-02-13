class Stakeholder < ApplicationRecord
  # model Association
  has_many :ratings, dependent: :destroy
  has_many :project_stakeholders, dependent: :destroy
  has_many :projects, through: :project_stakeholders
  has_many :stakeholder_strategies, dependent: :destroy
  has_many :strategies, through: :stakeholder_strategies

  # validations
  # validates_presence_of :title, :created_by
end
