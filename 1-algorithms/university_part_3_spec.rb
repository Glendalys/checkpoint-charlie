require_relative 'university.rb'

describe 'Part 3: Algorithm' do
  # Write a method `low_acceptance_count` that returns a an integer of the count of universities with an acceptance rate of less than 50.

  # We're going to be using the same array of universities from "Part 1b: Your Array of Universities",
  # but you'll still need to fill in this `let` block below.

  let(:universities) {[University.new("Purdue",80, 90), University.new("Indiana", 165, 135)]}

  it 'should find 2 universities' do
    expect(low_acceptance_count(universities)).to eq(2)
  end

end
