module Mutations
  class CreateDeck < BaseMutation
    field :deck, Types::DeckType, null: true

    argument :name, String, required: true
    argument :author, String, required: true
    argument :format, String, required: true
    argument :description, String, required: false

    def resolve(**args)
      deck = Deck.create!(args)
      {
        deck: deck
      }
    end
  end
end
