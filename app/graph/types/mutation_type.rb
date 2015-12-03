MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :introducePlayer, field: IntroducePlayer.field
end
