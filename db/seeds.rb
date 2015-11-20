# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
  {name: 'Taylor', avatar: 'ignore'},
  {name: 'Ben', avatar: 'ignore'},
  {name: 'Gus', avatar: 'ignore'},
  {name: 'Eddie', avatar: 'ignore'},
].each{|attributes| Player.create(attributes)}

Match.create(date: Date.current)

[
  {position: 0, team: 0, goals: 5, match_id: Match.first.id},
  {position: 1, team: 0, goals: 5, match_id: Match.first.id},
  {position: 0, team: 1, goals: 4, match_id: Match.first.id},
  {position: 1, team: 1, goals: 5, match_id: Match.first.id}
].zip(Player.all).map do |match_player_attributes, player|
  match_player_attributes.merge({player_id: player.id})
end.each{|attributes| MatchPlayer.create(attributes)}
