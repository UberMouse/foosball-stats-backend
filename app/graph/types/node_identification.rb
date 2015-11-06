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
