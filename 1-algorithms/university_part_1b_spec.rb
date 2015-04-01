require_relative 'university.rb'

describe "Part 1b: Your Array of Universities" do
  # You'll need to fill in this `let` block below.

  # There should be four universities in your `universities` array.

  # | name       | applied   | rejected | accepted |
  # |------------|-----------|----------|----------|
  # | Purdue     | 170       | 90       | 80       |
  # | Indiana    | 300       | 135      | 165      |
  # | Notre Dame | 500       | 220      | 230      |
  # | Toledo     | 404       | 180      | 224      |

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

  it 'should have a length of four' do
    expect(universities.length).to eq(4)
  end

  #What's a good name for this test? Give it one.
  it 'should contain only objects of the type University' do
    expect(universities.all?{ |university| university.class == University }).to be(true)
  end

  #Give a good name for this test too!
  it 'each stat in application stats should be greater than 0' do
    stats = universities.map(&:application_stats).map(&:values).flatten.all? { |stat| stat > 0 }
    expect(stats).to be(true)
  end
end
