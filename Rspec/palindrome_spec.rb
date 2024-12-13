
require_relative "palindrome"

RSpec.describe Palindrome do
  let(:palindrome) { Palindrome.new('racecar') }

  describe '#palindrome?' do
    it 'returns true if the string is a palindrome' do
      expect(palindrome.palindrome?).to be true
    end

    it 'returns false if the string is not a palindrome' do
      expect(Palindrome.new('hello').palindrome?).to be false
    end

    it 'returns true for an empty string' do
      expect(Palindrome.new('').palindrome?).to be true
    end

    it 'returns true for a string with one character' do
      expect(Palindrome.new('a').palindrome?).to be true
    end
  end
end
