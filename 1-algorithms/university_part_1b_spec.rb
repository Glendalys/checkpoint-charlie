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

  array_of_universities = [
    University.new(name: "Purdue", application_stats: { 'total' => 170, 'rejected' => 90, 'accepted' => 80 }),
    University.new(name: "Indiana", application_stats: { 'total' => 300, 'rejected' => 135, 'accepted' => 165 }),
    University.new(name: "Notre Dame", application_stats: { 'total' => 500, 'rejected' => 220, 'accepted' => 230 }),
    University.new(name: "Toledo", application_stats: { 'total' => 404, 'rejected' => 180, 'accepted' => 224 })
  ]

  let(:universities) {array_of_universities}

  it 'should have a length of four' do
    expect(universities.length).to eq(4)
  end

  #What's a good name for this test? Give it one.
  it 'should check the class type of each element in the array' do
    expect(universities.all?{ |university| university.class == University }).to be(true)
  end

  #Give a good name for this test too!
  it 'should check that all values in the application_stats hash are not zero' do
    stats = universities.map(&:application_stats).map(&:values).flatten.all? { |stat| stat > 0 }
    expect(stats).to be(true)
  end
end
