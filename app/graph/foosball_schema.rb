FoosballSchema = GraphQL::Schema.new(query: QueryType)
FoosballSchema.instance_eval do
  def execute(*args)
    new_options = args.pop.merge({debug: true})
    super(*(args << new_options))
  end
end
