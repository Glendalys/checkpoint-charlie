class University

  attr_accessor :name, :application_stats

  def initialize(args)
    @name = args[:name]
    @application_stats = {
      "applied" => args[:applied],
      "rejected" => args[:rejected],
      "accepted" => args[:accepted]
    }
  end

  def acceptance_rate
    (application_stats["accepted"]/application_stats["applied"].to_f * 100).to_i
  end

end

def low_acceptance_count(university_array)
  count = 0
  university_array.each do |university|
    count += 1 if university.acceptance_rate < 50
  end 
  count
end
