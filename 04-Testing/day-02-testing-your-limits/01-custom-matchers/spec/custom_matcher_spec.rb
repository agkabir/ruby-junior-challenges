# frozen_string_literal: true

RSpec.describe 'one word palindrome test' do
  let(:racecar)    { 'racecar' }
  let(:spaceship)  { 'spaceship' }
  let(:rotator)    { 'rotator' }
  let(:palindrome) { 'palindrome' }

  # Write a custom matcher that detects a one word palindrome,
  # using the following block: { |word| word.reverse == word }
  # When it is set up correctly, all of the following tests will pass.

  context 'when a palindrome is used' do
    # remove the 'x' before running this test
    xit 'is a palindrome' do
      expect(racecar).to be_a_palindrome
    end

    # remove the 'x' before running this test
    xit 'is a palindrome' do
      expect(rotator).to be_a_palindrome
    end
  end

  context 'when a palindrome is not used' do
    # remove the 'x' before running this test
    xit 'is not a palindrome' do
      expect(spaceship).not_to be_a_palindrome
    end

    # remove the 'x' before running this test
    xit 'is not a palindrome' do
      expect(palindrome).not_to be_a_palindrome
    end
  end
end
