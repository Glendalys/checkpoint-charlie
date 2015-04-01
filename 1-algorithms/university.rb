class University

  attr_accessor :name, :application_stats

  def initialize(args)
    @name = args[:name]
    @application_stats = args[:application_stats]
  end

  def acceptance_rate
    @application_stats['accepted'].to_f / @application_stats['applied'].to_f * 100
  end

end

# Write a method `low_acceptance_count` that returns a an integer of the count of universities with an acceptance rate of less than 50.

def low_acceptance_count(array_of_universities)
  less_than_fifty = []
  array_of_universities.each do |university|
    less_than_fifty << university if university.acceptance_rate < 50
  end
  less_than_fifty.length
end
