ViewerType = GraphQL::ObjectType.define do
  name "ViewerType"


  field :players, GraphQL::ListType.new(of_type: PlayerType), field: FetchAllField.new(model: Player, type: GraphQL::ListType.new(of_type: PlayerType))
  field :player, PlayerType, field: FetchField.new(model: Player, type: PlayerType)
  field :match, MatchType, field: FetchField.new(model: Match, type: MatchType)
  field :matches, GraphQL::ListType.new(of_type: MatchType), field: FetchAllField.new(model: Match, type: GraphQL::ListType.new(of_type: MatchType))
end
