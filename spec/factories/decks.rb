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
FactoryBot.define do
  factory :deck do
    name { "MyString" }
    author { "MyString" }
    format { 1 }
    description { "MyString" }
  end
end
