# frozen_string_literal: true

require 'spec_helper'

describe Paramee::Parameter do
  let(:name)    { 'search' }
  let(:value)   { 'word' }
  let(:options) { {} }
  let(:type)    { String }

  subject { described_class.new(name: name, value: value, options: options, type: type) }

  describe '#value_or_default' do
    context 'when value is present' do
      it 'returns the value' do
        expect(subject.value_or_default).to eq value
      end
    end

    context 'when value is nil' do
      let(:value) { nil }

      context 'when a default value is present' do
        let(:options) { { default: 'default' } }

        it 'returns the default value' do
          expect(subject.value_or_default).to eq options[:default]
        end
      end

      context 'when a default value is not present' do
        it 'returns nil' do
          expect(subject.value_or_default).to be_nil
        end
      end
    end
  end
end
