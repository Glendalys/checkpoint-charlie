class University

  attr_accessor :name, :application_stats

  def initialize(name, application_stats = {})
      @name = name
      @application_stats = application_stats
      @application_stats['rejected'] = 90
      @application_stats['accepted'] = 80
      @application_stats['applied'] = 170
  end


def acceptance_rate


end
end



purdue = University.new("Purdue")
 p purdue.name
 p purdue.application_stats




