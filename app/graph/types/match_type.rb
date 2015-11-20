MatchType = GraphQL::ObjectType.define do
  interfaces [NodeIdentification.interface]
  name "Match"
  global_id_field :id

  field :date, !types.String
  connection :players, ->{PlayerType.connection_type}
  connection :match_players, ->{MatchPlayerType.connection_type}
end
