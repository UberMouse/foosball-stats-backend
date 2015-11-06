MatchType = GraphQL::ObjectType.define do
  interfaces [NodeIdentification.interface]
  name "Match"
  global_id_field :id

  field :date, !types.String
  field :players, PlayerType.connection_type do
    resolve ->(obj, args, ctx) {obj.players}
  end
  field :match_players, MatchPlayerType.connection_type do
    resolve ->(obj, args, ctx) {obj.match_players}
  end
end
