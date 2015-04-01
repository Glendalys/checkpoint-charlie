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

  let(:universities) {[University.new("Purdue",80, 90), University.new("Indiana", 165, 135), University.new("Notre Dame", 230, 220), University.new("Toledo", 224, 180)]}

  it 'should have a length of four' do
    expect(universities.length).to eq(4)
  end

  #What's a good name for this test? Give it one.
  it 'should have each input be an instance of the Univeristy class' do
    expect(universities.all?{ |university| university.class == University }).to be(true)
  end

  #Give a good name for this test too!
  it 'should more than 0 stats for each university' do
    stats = universities.map(&:application_stats).map(&:values).flatten.all? { |stat| stat > 0 }
    expect(stats).to be(true)
  end
end
