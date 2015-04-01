class University

  attr_accessor :name, :application_stats

  def initialize(args)
    self.name = args['name']
    self.application_stats = args['application_stats']
  end

end