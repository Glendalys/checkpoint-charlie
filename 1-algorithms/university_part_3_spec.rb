require_relative 'university.rb'

describe 'Part 3: Algorithm' do
  # Write a method `low_acceptance_count` that returns a an integer of the count of universities with an acceptance rate of less than 50.

  # We're going to be using the same array of universities from "Part 1b: Your Array of Universities",
  # but you'll still need to fill in this `let` block below.

  let(:universities) {[University.new(name: 'Purdue', status: {'applied' => 170, 'rejected' => 90, 'accepted' => 80}),
     University.new(name: 'MIT', status: {'applied' => 170, 'rejected' => 90, 'accepted' => 60}),
     University.new(name: 'Boston College', status: {'applied' => 170, 'rejected' => 90, 'accepted' => 100}),
     University.new(name: 'Harvard', status: {'applied' => 170, 'rejected' => 90, 'accepted' => 130})]}

  it 'should find 2 universities' do
    expect(low_acceptance_count(universities)).to eq(2)
  end

end
