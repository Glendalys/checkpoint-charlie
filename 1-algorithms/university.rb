class University

  attr_accessor :name, :application_stats

  def initialize(args)
    @name = args[:name]
    @application_stats = args[:application_stats]
  end

  def acceptance_rate
    accepted = self.application_stats['accepted'].to_f
    applied = self.application_stats['applied'].to_f
    (accepted/applied * 100).floor
  end

end
