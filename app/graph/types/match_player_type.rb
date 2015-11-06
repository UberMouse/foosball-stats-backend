MatchPlayerType.define do
  interfaces [NodeIdentification.interface]
  name "MatchPlayer"
  global_id_field :id

  field :position, !PositionEnum
  field :team, !TeamEnum
  field :goals, !types.Int
  field :player, PlayerType do
    resolve ->(obj, args, ctx) {Player.find(obj.player_id)}
  end
  field :match, MatchType do
    resolve ->(obj, args, ctx) {Match.find(obj.match_id)}
  end
end
