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
