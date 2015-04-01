class University

  attr_accessor :name, :application_stats

  def initialize(name, accepted, rejected)
    @name = name
    @accepted = accepted
    @rejected = rejected
    @application_stats = {
      "applied" => @rejected + @accepted,
      "accepted" => @accepted,
      "rejected" => @rejected
    }
  end

  def acceptance_rate
    rate = @accepted/(@accepted + @rejected).to_f
    (rate * 100).floor
  end

  def low_acceptance_count(universties)
    count = 0
    universties = University.new(args)
    for universties.each do |test|
        if acceptance_rate < 50
          count += 1
        end
      end
      count
    end

  end
