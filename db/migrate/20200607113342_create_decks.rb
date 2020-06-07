class CreateDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :decks do |t|
      t.string :name, null: false
      t.string :author, null: false
      t.integer :format, null: false, limit: 1
      t.string :description

      t.timestamps
    end
  end
end
