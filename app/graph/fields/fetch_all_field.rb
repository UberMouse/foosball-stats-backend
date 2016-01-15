class FetchAllField < GraphQL::Field
  def initialize(model:, type:)
    @model = model
    self.type = type
    self.description = "Return all instances of #{model.name}"
    self.arguments = {
      ids: GraphQL::Argument.define do
        type GraphQL::ListType.new(of_type: GraphQL::INT_TYPE)
        description "Fake argument"
      end
    }
  end

  def resolve(*)
    @model.all
  end

  def unwrap
    self.type
  end
end
