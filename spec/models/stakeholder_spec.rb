require 'rails_helper'

RSpec.describe Stakeholder, type: :model do
  # Association test
  # ensure Stakeholder model has a 1:m relationship with the Item model
  it { should have_many(:ratings).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
