# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Kuso, type: :model do
  subject(:kuso) { FactoryBot.build(:kuso) }

  describe '#kusodokata_sentence' do
    subject { kuso.send(:kusodokata_sentence) }

    it { is_expected.to be_a String }
  end
end
