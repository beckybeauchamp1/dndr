# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

Character.destroy_all
Dmaster.destroy_all
Campaign.destroy_all

name = Faker::Company.name
summary = Faker::Lorem.paragraph

tartan = Campaign.create (name: name, summary: summary)
eagle = Campaign.create (name: name, summary: summary)
