class University

  attr_accessor :name, :application_stats

  def initialize(args)
    self.name = args['name']
    self.application_stats = args['application_stats']
  end

  def acceptance_rate
    (100.0 * application_stats['accepted'] / application_stats['applied']).round
  end

end