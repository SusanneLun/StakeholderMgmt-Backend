class Stakeholder < ApplicationRecord
  # model Association
  has_many :ratings, dependent: :destroy

  # validations
  # validates_presence_of :title, :created_by
end
