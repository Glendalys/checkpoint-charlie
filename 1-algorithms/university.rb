
class University

  attr_accessor :name, :application_stats

  def initialize(args)
    @name = args[:name]
    @application_stats = args[:application_stats]
    @accepted = application_stats["accepted"]
    @applied = application_stats["applied"]
  end

  def acceptance_rate
    ((@accepted / @applied.to_f ) * 100).to_i
  end
def low_acceptance_rate?
  acceptance_rate < 50
end




end
