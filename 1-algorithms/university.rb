class University

  attr_accessor :name, :application_stats

  def initialize(name, application_stats = {})
    @name = name
    @application_stats = application_stats
    @application_stats['applied'] = 0 if @application_stats['applied'].nil?
    @application_stats['rejected'] = 0 if @application_stats['rejected'].nil?
    @application_stats['accepted'] = 0 if @application_stats['accepted'].nil?
  end

  def acceptance_rate
    return nil if application_stats['applied'] == 0
    to_whole_percent(application_stats['accepted'].to_f / application_stats['applied'].to_f)
  end

private

  def to_whole_percent(num)
    (num * 100).to_i
  end

end


def low_acceptance_count(universities)
  return nil if universities.nil?
  return 0 if universities.empty?

  universities.count do |university|
    university.acceptance_rate < 50
  end
end