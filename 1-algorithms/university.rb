class University

  attr_accessor :name, :application_stats

  def initialize(name, application_stats)
    @name = name
    @application_stats = application_stats
  end

  def acceptance_rate
    acceptance_rate_float = (@application_stats["accepted"] / @application_stats["applied"].to_f)
    (acceptance_rate_float * 100).to_i
  end

end


def low_acceptance_count(universities)
  low_acceptance_array = []
  for university in universities
      low_acceptance_array << university.name if university.acceptance_rate < 50
  end
  low_acceptance_array.length
end