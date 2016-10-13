# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
entries = [{title: "punkin", joke: "why did the pumpkin cross the road? it fell off the wagon."}, {title: "sports", joke: "what is a pumpkin's favorite sport? squash."}, {title: "politics", joke: "what do you call a pumpkin carved to look like trump? a jerk o'lantern."},{title: "life motto", joke: "trick o'treat yoself."}]

entries.each do |entry|
  Entry.create(entry)
end
