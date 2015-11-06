class GraphqlController < ApplicationController
  def index
    query_string = params[:query]
    query_variables = params[:variables] || {}
    result = FoosballSchema.execute(query_string, variables: query_variables)
    render json: result
  end
end
