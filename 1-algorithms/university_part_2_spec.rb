require_relative 'university.rb'

describe "Part 2: Acceptance Rate" do

  PerdueStats = {"name" => "Perdue",
                 "applied"=> 170,
                 "rejected"=> 90,
                 "accepted"=> 80
                 }
  let(:university){University.new(PerdueStats)}

  it 'should have an acceptance_rate' do
    expect(university.acceptance_rate).to eq(47)
  end
end
