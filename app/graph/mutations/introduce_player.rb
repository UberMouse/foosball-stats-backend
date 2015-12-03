IntroducePlayer = GraphQL::Relay::Mutation.define do
  name "IntroducePlayer"

  input_field :name, !types.String
  input_field :avatar, types.String

  return_field :player, PlayerType

  resolve ->(inputs, ctx) {
    attributes = {name: inputs["name"], avatar: inputs["avatar"]}
    {player: Player.create!(attributes)}
  }
end
