# == Schema Information
#
# Table name: decks
#
#  id          :bigint           not null, primary key
#  author      :string(255)      not null
#  description :string(255)
#  format      :integer          not null
#  name        :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Deck < ApplicationRecord
  enum format: { standard: 0, modern: 1, pioneer: 2, legacy: 3, vintage: 4, pauper: 5}

  validates :name,
    presence: true,
    length: { maximum: 255 }
  validates :author,
    presence: true,
    length: { maximum: 255 }
end
