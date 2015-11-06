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
