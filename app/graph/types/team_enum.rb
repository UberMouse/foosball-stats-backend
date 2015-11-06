TeamEnum = GraphQL::EnumType.define do
  name "Team"
  description "What team the MatchPlayer was on"

  value("RED", value: 0)
  value("GOALIE", value: 1)
end
