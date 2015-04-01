class University

  attr_accessor :name, :application_stats

  def initialize(args)
    @name = args[:name]
    @application_stats = args[:application_stats]
  end

end

app1 = {'applied' => 170,
       'rejected' => 90,
       'accepted' => 70
       }
app2 = {'applied' => 200,
       'rejected' => 100,
       'accepted' => 100
       }
app3 = {'applied' => 180,
       'rejected' => 20,
       'accepted' => 160
       }
app4 = {'applied' => 3000,
       'rejected' => 100,
       'accepted' => 2900
       }


uni1 = University.new(name: "Yale",
                      application_stats: app1)
uni2 = University.new(name: "Brown",
                      application_stats: app2)
uni3 = University.new(name: "Hogwarts",
                      application_stats: app3)
uni4 = University.new(name: "Ghost",
                      application_stats: app4)

universities = [uni1, uni2, uni3, uni4]
