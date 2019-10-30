# frozen_string_literal: true

Location.destroy_all
Quote.destroy_all
Spell.destroy_all
Mastery.destroy_all
Jobclass.destroy_all
Rank.destroy_all
# Champion.destroy_all

# 13.times.do
#     location = location.create(
#       locationname: Faker::Games::LeagueOfLegends.unique.location
#       jobclass: "Test"
#     )
# 5.times do
#   Champion.create(
#     champname: Faker::Games::LeagueOfLegends.unique.champion,
#     location: Faker::Games::LeagueOfLegends.location,
#     quote: Faker::Games::LeagueOfLegends.unique.quote,
#     spell: Faker::Games::LeagueOfLegends.unique.summoner_spell,
#     mastery: Faker::Games::LeagueOfLegends.unique.masteries,
#     rank: Faker::Games::LeagueOfLegends.unique.rank
#   )
# end
37.times do
  Quote.create(
    quotename: Faker::Games::LeagueOfLegends.unique.quote
  )
end

27.times do
  Rank.create(
    rankname: Faker::Games::LeagueOfLegends.unique.rank
  )
end

45.times do
  Mastery.create(
    masteryname: Faker::Games::LeagueOfLegends.unique.masteries
  )
end

13.times do
  Spell.create(
    spellname: Faker::Games::LeagueOfLegends.unique.summoner_spell
  )
end

4.times do
  Jobclass.create(
    classname: Faker::Games::LeagueOfLegends.unique.champion
  )
end

4.times do
  Location.create(
    locationname: Faker::Games::LeagueOfLegends.unique.location,
    jobclass_id: Faker::Number.within(range: 1..4)
  )
end

puts "Generated #{Quote.count} quotes."
puts "Generated #{Rank.count} ranks."
puts "Generated #{Mastery.count} masteries."
puts "Generated #{Spell.count} spells."
puts "Generated #{Jobclass.count} classes."
puts "Generated #{Location.count} locations."
