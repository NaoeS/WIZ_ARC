module Types
  class DeckType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :author, String, null: false
    field :format, String, null: false
    field :description, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
