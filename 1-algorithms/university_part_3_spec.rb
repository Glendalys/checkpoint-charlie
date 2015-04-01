require_relative 'university.rb'

describe 'Part 3: Algorithm' do
  # Write a method `low_acceptance_count` that returns a an integer of the count of universities with an acceptance rate of less than 50.

  # We're going to be using the same array of universities from "Part 1b: Your Array of Universities",
  # but you'll still need to fill in this `let` block below.

  let(:universities) {
    purdue_app = {'applied' => 170,
           'rejected' => 90,
           'accepted' => 70
           }
    indiana_app = {'applied' => 300,
           'rejected' => 135,
           'accepted' => 165
           }
    notre_dame_app = {'applied' => 500,
           'rejected' => 220,
           'accepted' => 230
           }
    toledo_app = {'applied' => 404,
           'rejected' => 180,
           'accepted' => 224
           }

    purdue = University.new({name: "Purdue",
                          application_stats: purdue_app})
    indiana = University.new({name: "Indiana",
                          application_stats: indiana_app})
    notre_dame = University.new({name: "Notre Dame",
                          application_stats: notre_dame_app})
    toledo = University.new({name: "Toledo",
                          application_stats: toledo_app})

    universities = [purdue, indiana, notre_dame, toledo]
  }

  it 'should find 2 universities' do
    expect(low_acceptance_count(universities)).to eq(2)
  end

end
