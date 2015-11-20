QueryType = GraphQL::ObjectType.define do
  field :player, PlayerType, field: FetchField.new(model: Player, type: PlayerType)
  field :match, MatchType, field: FetchField.new(model: Match, type: MatchType)
  field :node, field: NodeIdentification.field
end
