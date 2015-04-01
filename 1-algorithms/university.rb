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

#we hate methods in global scope but that's what the spec asks for :-(
def low_acceptance_count arr
  (arr.select {|uni| uni.acceptance_rate < 50 }).count

end