PositionEnum = GraphQL::EnumType.define do
  name "Position"
  description "What position the MatchPlayer played"

  value("STRIKER", value: 0)
  value("GOALIE", value: 1)
end
