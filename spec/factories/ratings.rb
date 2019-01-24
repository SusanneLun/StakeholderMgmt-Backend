FactoryBot.define do
  factory :rating do
    name { Faker::StarWars.character }
    done false
    rating_id nil
  end
end
