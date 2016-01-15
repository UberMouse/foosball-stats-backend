namespace :schema do
  desc "Dumps GraphQL schema to JSON file"
  task dump: :environment do
    schema_introspection = FoosballSchema.execute(GraphQL::Introspection::INTROSPECTION_QUERY)
    json = schema_introspection.to_json

    File.open(Rails.root.join('schema.json'), 'w'){|f| f.write(json)}
  end
end
