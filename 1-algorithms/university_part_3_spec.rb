require_relative 'university.rb'

describe 'Part 3: Algorithm' do
  # Write a method `low_acceptance_count` that returns a an integer of the count of universities with an acceptance rate of less than 50.

  # We're going to be using the same array of universities from "Part 1b: Your Array of Universities",
  # but you'll still need to fill in this `let` block below.

  let(:universities) {[University.new("Purdue", {"applied" => 170, "rejected" => 90, "accepted" => 80}), University.new("Indiana", {"applied" => 300, "rejected" => 135, "accepted" => 165}), University.new("Notre Dame", {"applied" => 500, "rejected" => 220, "accepted" => 230}), University.new("Toledo", {"applied" => 404, "rejected" => 180, "accepted" => 224})]}

  it 'should find 2 universities' do
    expect(low_acceptance_count(universities)).to eq(2)
  end

end
