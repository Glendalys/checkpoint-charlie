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