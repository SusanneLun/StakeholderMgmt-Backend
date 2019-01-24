require 'rails_helper'

RSpec.describe Rating, type: :model do
  # Association test
  # ensure an rating record belongs to a single stakeholder record
  it { should belong_to(:stakeholder) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:name) }
  #ensure column power is present before saving
  it { should validate_presence_of(:power) }
  #ensure column interest is present before saving
  it { should validate_presence_of(:interest) }
  #ensure column positivity is present before saving
  it { should validate_presence_of(:positivity) }
end
