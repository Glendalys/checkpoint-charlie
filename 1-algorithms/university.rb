class University

  attr_accessor :name, :application_stats

  def initialize(args)
    @application_stats = args[:application_stats]
    @name = args[:name]
  end

  def acceptance_rate
    app = @application_stats['applied']
    acc = @application_stats['accepted']
    (acc.to_f/app * 100).to_i
  end

  def low_acceptance_count
    acceptance_rate
  end

#Need to go back and write this: part 3

# Somebody has called for a count of the universities with an acceptance rate of less than 50 percent. Write a method low_acceptance_count that returns a an integer of the count of universities with an acceptance rate of less than 50. When you are done all tests in university_part_3_spec.rb should pass.

# Implement this method without using fancy enumerable methods.
end