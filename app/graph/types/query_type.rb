QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :viewer do
    type ViewerType
    resolve ->{OpenStruct.new}
  end
  field :node, field: NodeIdentification.field
end
