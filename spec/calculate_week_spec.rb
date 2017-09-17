require 'spec_helper'
require 'calculate_week'

RSpec.describe 'calculate_week' do

  context 'when the week is 10/09/2017' do
    it 'should be week A' do
      expect(calculate_week('10/09/2017')).to eql('A')
    end
  end

  context 'when the week is 19/11/2017' do
    it 'should be week B' do
      expect(calculate_week('19/11/2017')).to eql('B')
    end
  end

  context 'when the week is 15/10/2017' do
    it 'should be week C' do
      expect(calculate_week('15/10/2017')).to eql('C')
    end
  end

  context 'when the week is 09/12/2018' do
    it 'we have not got that far in the rota yet, the week is ?' do
      expect(calculate_week('09/12/2018')).to eql('?')
    end
  end
end
