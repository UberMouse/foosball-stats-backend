QueryType = GraphQL::ObjectType.define do
  field :player, FetchField.new(model: Player, type: PlayerType)
  field :match, FetchField.new(model: Match, type: MatchType)
  field :node, NodeIdentification.field
end
