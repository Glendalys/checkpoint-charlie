require_relative 'university.rb'

describe 'Part 3: Algorithm' do
  # Write a method `low_acceptance_count` that returns a an integer of the count of universities with an acceptance rate of less than 50.

  # We're going to be using the same array of universities from "Part 1b: Your Array of Universities",
  # but you'll still need to fill in this `let` block below.
purdue = University.new({name: "Purdue", application_stats: {'applied' => 170, 'rejected' => 90, 'accepted' => 80}})
  indiana = University.new({name: "Indiana", application_stats: {'applied' => 300, 'rejected' => 135, 'accepted' => 165}})
  notre_dame = University.new({name: "Notre Dame", application_stats: {'applied' => 500, 'rejected' => 220, 'accepted' => 230}})
  toledo = University.new({name: "Toledo", application_stats: {'applied' => 404, 'rejected' => 180, 'accepted' => 224}})
  universities = [purdue, indiana, notre_dame, toledo]

  let(:universities) {purdue.low_acceptance_count(universities)}

  it 'should find 2 universities' do
    expect(purdue.low_acceptance_count(universities)).to eq(2)
  end

end
