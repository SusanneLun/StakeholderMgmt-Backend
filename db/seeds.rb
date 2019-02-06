# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.f
puts "Destroying all references on table"

# Stakeholder.destroy_all
Rating.destroy_all
# Project.destroy_all

puts "Creating new references"
# Project.create(name: "Digital Transformation", description: "Integrating all social, web, mobile, ecommerce, service efforts and investments to deliver an integrated and frictionless customer experience.")
# Project.create(name: "Data Analytics for Project Management", description: "Develop and implement tools to analyse project data.")

# Stakeholder.create(name: 'Alison Eckhardt', title: "CIO", alias: 'R2D2', note: '')
# Stakeholder.create(name: 'Eric Prydz', title: "Sponsor", alias: 'C3P0', note: '')
# Stakeholder.create(name: 'Nicola Green', title: "Programme Manager", alias: 'Ponder', note: '')
# Stakeholder.create(name: 'Sue Lorenzo', title: "Head of Customer Service", alias: 'Curious', note: '')
# Stakeholder.create(name: 'Harry Lancaster', title: "HR Manager", alias: 'Mellow', note: '')
# Stakeholder.create(name: 'Simone Esther', title: "Head of Operations", alias: 'Cycle', note: '')
# Stakeholder.create(name: 'Peter Morris', title: "Sales Manager", alias: 'Disruption', note: '')
# Stakeholder.create(name: 'Betty Roland', title: "Finance Manager", alias: 'Waving', note: '')
# Stakeholder.create(name: 'Richard Lockhart', title: "Digital Expert", alias: 'Interested', note: '')
# Stakeholder.create(name: 'Fran Andersson', title: "eBusiness Manager", alias: 'Direct', note: '')
# Stakeholder.create(name: 'Zoe Sole', title: "Head of Communications", alias: 'Positivity', note: '')
# Stakeholder.create(name: 'Matthew Amber', title: "Head of HR", alias: 'Negative', note: '')
# Stakeholder.create(name: 'Louise Thompson', title: "Marketing Manager", alias: 'Extrovert', note: '')
# Stakeholder.create(name: 'Mayowa Stiller', title: "IS Project Manager", alias: 'Running', note: '')
# Stakeholder.create(name: 'Connie Morris', title: "Digital Comms Expert", alias: 'Slow', note: '')
# Stakeholder.create(name: 'Adam Smith', title: "ERP Systems Manager", alias: 'Happy', note: '')
# Stakeholder.create(name: 'Marie Larsson', title: "CRM Manager", alias: 'Sad', note: '')

puts "creating ratings and project_stakeholder join references"
Stakeholder.all.each do |stakeholder|
  p stakeholder
  2.times do
    Rating.create(stakeholder: stakeholder, power: rand(1..10), interest: rand(1..10), positivity: rand(1..10))
  end
  ProjectStakeholder.create(project_id: 1, stakeholder: stakeholder)
end

puts "done"
