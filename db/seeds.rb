# frozen_string_literal: true

Location.destroy_all
Quote.destroy_all
Spell.destroy_all
Mastery.destroy_all
Rank.destroy_all
get a moomChampion.destroy_all

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

13.times do
  Location.create(
    locationname: Faker::Games::LeagueOfLegends.unique.location
  )
end

5.times do
  Champion.create(
    champname: Faker::Games::LeagueOfLegends.unique.champion,
    location_id: Faker::Number.within(range: 1..13),
    quote_id: Faker::Number.within(range: 1..37),
    spell_id: Faker::Number.within(range: 1..13),
    mastery_id: Faker::Number.within(range: 1..45),
    rank_id: Faker::Number.within(range: 1..27)
  )
end

puts "Generated #{Quote.count} quotes."
puts "Generated #{Rank.count} ranks."
puts "Generated #{Mastery.count} masteries."
puts "Generated #{Spell.count} spells."
puts "Generated #{Location.count} locations."
puts "Generated #{Champion.count} champions."
