require 'rails_helper'

describe ApplicationHelper do
  describe '#country_name' do
    it 'should display the country name for a code' do
      expect(country_name('AR')).to eq('Argentina')
    end
  end
end