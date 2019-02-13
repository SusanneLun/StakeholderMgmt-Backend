# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.f

# Project.create(name: "Digital Transformation", description: "Integrating all social, web, mobile, ecommerce, service efforts and investments to deliver an integrated and frictionless customer experience.")
# Project.create(name: "Data Analytics for Project Management", description: "Develop and implement tools to analyse project data.")


Category.create(name: "Involve")
Category.create(name: "Influence")
Category.create(name: "Communicate")
Category.create(name: "Defend")
Category.create(name: "Other")

Strategy.create(option: "Involve in Project Team", category_id: 1)
Strategy.create(option: "Involve as Product Owner", category_id: 1)
Strategy.create(option: "Involve in Steering Group", category_id: 1)
Strategy.create(option: "Involve as Change Agent", category_id: 1)
Strategy.create(option: "Involve as Subject Matter Expert", category_id: 1)
Strategy.create(option: "Involve as Quality Assurance", category_id: 1)
Strategy.create(option: "Other", category_id: 1)
Strategy.create(option: "Influence via Stakeholder's direct report", category_id: 2)
Strategy.create(option: "Influence via Stakeholder's manager", category_id: 2)
Strategy.create(option: "Influence via Stakeholder's peer", category_id: 2)
Strategy.create(option: "Influcence via other colleague", category_id: 2)
Strategy.create(option: "Influence via Project Sponsor", category_id: 2)
Strategy.create(option: "Get to know Stakeholder better", category_id: 2)
Strategy.create(option: "Other", category_id: 2)
Strategy.create(option: "Tailor communication to Stakeholder", category_id: 3)
Strategy.create(option: "Communicate projects benefit to Stakeholder", category_id: 3)
Strategy.create(option: "Include Stakeholder in Project Comms Plan", category_id: 3)
Strategy.create(option: "Other", category_id: 3)
Strategy.create(option: "Secure resources controlled by Stakeholder", category_id: 4)
Strategy.create(option: "Present business case numbers", category_id: 4)
Strategy.create(option: "Present no-project consequences", category_id: 4)
Strategy.create(option: "Make aware of compliance with regulations", category_id: 4)
Strategy.create(option: "Other", category_id: 4)
Strategy.create(option: "Other", category_id: 5)


StakeholderStrategy.create(stakeholder_id: 15, strategy_id: 1, project_id: 1)
StakeholderStrategy.create(stakeholder_id: 17, strategy_id: 9, project_id: 1)
StakeholderStrategy.create(stakeholder_id: 17, strategy_id: 19, project_id: 1)
StakeholderStrategy.create(stakeholder_id: 8, strategy_id: 21, project_id: 1)
StakeholderStrategy.create(stakeholder_id: 12, strategy_id: 22, project_id: 1)
