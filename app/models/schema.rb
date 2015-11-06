NodeIdentification = GraphQL::Relay::GlobalNodeIdentification.define do
  object_from_id ->(id) do
    type_name, id = NodeIdentification.from_global_id(id)
    binding.pry
  end

  type_from_object ->(object) do
    binding.pry
    object.class
  end
end

PlayerType = GraphQL::ObjectType.define do
  interfaces [NodeIdentification.interface]
  name "Player"
  global_id_field :id

  field :name, !types.String
  field :avatar, types.String
  field :matches, MatchType.connection_type do
    resolve ->(obj, args, ctx) {obj.matches}
  end
end

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

PositionEnum = GraphQL::EnumType.define do
  name "Position"
  description "What position the MatchPlayer played"

  value("STRIKER", value: 0)
  value("GOALIE", value: 1)
end

TeamEnum = GraphQL::EnumType.define do
  name "Team"
  description "What team the MatchPlayer was on"

  value("RED", value: 0)
  value("GOALIE", value: 1)
end

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
