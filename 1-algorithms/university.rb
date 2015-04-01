class University

  attr_accessor :name, :application_stats

  def initialize(args)
    @name = args[:name]
    @application_stats = args[:application_stats]
  end

  # Write an `acceptance_rate` method that returns the percentage of accepted students at a university.
  # This number should be an integer representing the percent. The total number of applications is the 'applied' count.
  def acceptance_rate
    @application_stats['accepted'].to_f / @application_stats['applied'].to_f * 100
  end

end

