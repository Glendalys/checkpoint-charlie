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


end
