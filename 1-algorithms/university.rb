class University

  attr_accessor :name, :application_stats

  def initialize(args)
    @name = args[:name]
    @application_stats = args[:application_stats]
  end

  def acceptance_rate
    applied = application_stats['applied']
    accepted = application_stats['accepted']
    acceptance_rate = accepted.to_f / applied
    (acceptance_rate * 100).to_i
  end

  def low_acceptance_count(universities)
    low_count = 0
    universities.each do |university|
      if university.acceptance_rate < 50
        low_count += 1
      end
    end
    low_count
  end

end
