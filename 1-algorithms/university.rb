class University

  attr_accessor :name, :application_stats

  def initialize(args)
  	@name = args[:name]
  	@application_stats = args[:application_stats] 
  end

  def acceptance_rate
  	@application_stats['accepted'] * 100 / @application_stats['total']
  end
end

def low_acceptance_count(univ_arr, count = 0)
	univ_arr.each do |univ|
		count += 1 if univ.acceptance_rate > 50
	end
	count
end

