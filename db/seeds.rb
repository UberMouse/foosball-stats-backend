# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
  {id: 1, name: 'Taylor', avatar: 'ignore'},
  {id: 2, name: 'Ben', avatar: 'ignore'},
  {id: 3, name: 'Gus', avatar: 'ignore'},
  {id: 4, name: 'Eddie', avatar: 'ignore'},
].each{|attributes| Player.create(attributes)}

Match.create(id: 1, date: Date.current)

[
  {id: 1, position: 0, team: 0, goals: 5, match_id: 1},
  {id: 2 ,position: 1, team: 0, goals: 5, match_id: 1},
  {id: 3, position: 0, team: 1, goals: 4, match_id: 1},
  {id: 4, position: 1, team: 1, goals: 5, match_id: 1}
].zip(Player.all).map do |match_player_attributes, player|
  match_player_attributes.merge({player_id: player.id})
end.each{|attributes| MatchPlayer.create(attributes)}
