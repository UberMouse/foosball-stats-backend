Rails.application.routes.draw do
  root to: redirect("graphiql")
  post "queries", to: "graphql#index"
  get "graphiql", to: "pages#graphiql"
end
