MatchPlayerType = GraphQL::ObjectType.define do
  interfaces [NodeIdentification.interface]
  name "MatchPlayer"
  global_id_field :id

  field :position, !PositionEnum
  field :team, !TeamEnum
  field :goals, !types.Int
  field :player, ->{PlayerType}, field: FetchField.new(model: Player, type: PlayerType)
  field :match, ->{MatchType}, field: FetchField.new(model: Match, type: MatchType)
end
