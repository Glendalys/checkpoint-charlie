class University

  attr_accessor :name, :application_stats

  def initialize(args)
    @name = args["name"]
    @applied = args["applied"]
    @rejected = args["rejected"]
    @accepted = args["accepted"]
    @application_stats = {"applied" => @applied,
     "rejected" => @rejected,
     "accepted"=> @accepted
   }
  end

  def acceptance_rate
    return (@accepted.to_f/@applied * 100).floor
  end

end

def low_acceptance_count(universities)
  count = 0
  universities.each do |university|
    count += 1 if university.acceptance_rate < 50
  end
  count
end
