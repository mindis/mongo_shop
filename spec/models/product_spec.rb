require 'rails_helper'

describe Product do
  context 'fields' do
    it { is_expected.to have_fields :name, :price }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :price }
  end
end
