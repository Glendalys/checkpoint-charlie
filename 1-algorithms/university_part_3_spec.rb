require_relative 'university.rb'

describe 'Part 3: Algorithm' do

  PurdueData ={"name" => "Perdue",
               "applied"=> 170,
               "rejected"=> 90,
               "accepted"=> 80
               }
  IndianaData ={"name" => "Indiana",
                "applied"=> 300,
                "rejected"=> 135,
                "accepted"=> 165
                }
  NotreDameData = {"name" => "Notre Dame",
                   "applied"=> 500,
                   "rejected"=> 220,
                   "accepted"=> 230
                   }
  ToledoData = {"name" => "Toledo",
                "applied"=> 404,
                "rejected"=> 180,
                "accepted"=> 224
                }

  UniversitiesArray = [University.new(PurdueData), University.new(IndianaData),University.new(NotreDameData), University.new(ToledoData)]

  let(:universities) {UniversitiesArray}

  it 'should find 2 universities' do
    expect(low_acceptance_count(universities)).to eq(2)
  end

end
