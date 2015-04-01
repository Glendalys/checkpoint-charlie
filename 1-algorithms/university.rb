class University

  attr_accessor :name, :application_stats

  def initialize(args)
    @name = args[:name]
    @application_stats = args[:application_stats]
  end

  def acceptance_rate
    (application_stats['accepted'].to_f/application_stats['applied'].to_f * 100).floor
  end

  def low_acceptance
    acceptance_rate < 50 ? true : false
  end

end


def low_acceptance_count(universities)
  universities.partition{|university| university.low_acceptance}[0].count
end
