class University

  attr_accessor :name, :application_stats, :acceptance_rate

  def initialize(args)
    @name = args[:name]
    @application_stats = args[:status]
    @acceptance_rate = accept_rate(@application_stats['accepted'],@application_stats['applied'])
  end

  def accept_rate(accepted, applied)
    rate = accepted / applied.to_f * 100
    return rate.to_i
  end

end

def low_acceptance_count(array)
  low_accept_univ = []
  array.each do |university|
    low_accept_univ << university if university.acceptance_rate < 50
  end
  low_accept_univ.length
end

# university = University.new(name: 'Purdue', status: {'applied' => 170, 'rejected' => 90, 'accepted' => 80})

# university.acceptance_rate
universities = [University.new(name: 'Purdue', status: {'applied' => 170, 'rejected' => 90, 'accepted' => 80}),
                University.new(name: 'MIT', status: {'applied' => 170, 'rejected' => 90, 'accepted' => 60}),
                University.new(name: 'Boston College', status: {'applied' => 170, 'rejected' => 90, 'accepted' => 100}),
                University.new(name: 'Harvard', status: {'applied' => 170, 'rejected' => 90, 'accepted' => 130})]


p low_acceptance_count(universities)