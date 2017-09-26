# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
languages = Language.create([{ name: "C++" }, { name: "Java" }, { name: "Javascript" }, { name: "R" }, { name: "Ruby" }, { name: "Rails" }, { name: "PHP" }, {name: "Python"}])
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
