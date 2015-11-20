PlayerType = GraphQL::ObjectType.define do
  interfaces [NodeIdentification.interface]
  name "Player"
  global_id_field :id

  field :name, !types.String
  field :avatar, types.String
  connection :matches, ->{MatchType.connection_type}
end
