# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Kuso, type: :model do
  subject(:kuso) { FactoryBot.build(:kuso) }

  describe '#sentence' do
    subject { kuso.sentence }

    it { is_expected.to be_a String }
  end
end
