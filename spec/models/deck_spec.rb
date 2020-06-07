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
require 'rails_helper'

RSpec.describe Deck, type: :model do
  describe 'validations' do
    context '名前の検証' do
      it '必須であること' do
        is_expected.to validate_presence_of(:name)
      end

      it '最大 255 文字であること' do
        is_expected.to validate_length_of(:name)
          .is_at_most(255)
      end
    end

    context '作成者の検証' do
      it '必須であること' do
        is_expected.to validate_presence_of(:author)
      end

      it '最大 255 文字であること' do
        is_expected.to validate_length_of(:author)
          .is_at_most(255)
      end
    end
  end
end
