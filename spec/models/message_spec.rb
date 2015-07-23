require 'rails_helper'

RSpec.describe Message, type: :model do

  describe '#receive' do
    subject { Message }

    it 'uses from and body' do
      expect(subject.receive('foo', 'bar')).to be_truthy
    end
  end

  describe '#send' do
    pending 'a way to test sending a message without actually sending it'
  end
end
