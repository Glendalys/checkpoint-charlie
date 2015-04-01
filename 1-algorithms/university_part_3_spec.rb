require_relative 'university.rb'

describe 'Part 3: Algorithm' do
  # Write a method `low_acceptance_count` that returns a an integer of the count of universities with an acceptance rate of less than 50.

  # We're going to be using the same array of universities from "Part 1b: Your Array of Universities",
  # but you'll still need to fill in this `let` block below.

  purdue_args = {
    name: "Purdue",
    applied: 170,
    rejected: 90,
    accepted: 80
  }
  indiana_args = {
    name: "Indiana",
    applied: 300,
    rejected: 135,
    accepted: 165
  }
  notre_dame_args = {
    name: "Notre Dame",
    applied: 500,
    rejected: 220,
    accepted: 230
  }
  toledo_args = {
    name: "Toledo",
    applied: 404,
    rejected: 180,
    accepted: 224
  }

  let(:universities) {[University.new(purdue_args), University.new(indiana_args), University.new(notre_dame_args), University.new(toledo_args)]}


  it 'should find 2 universities' do
    expect(low_acceptance_count(universities)).to eq(2)
  end

end
