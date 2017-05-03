require 'pry'

class Robot
  attr_reader :name

  @@names = []

  def name
    @name ||= random_name
  end

  def reset
    @name = random_name
  end

  private

  def random_name
    new_name = generate_random_name

    @@names.include?(new_name) ? random_name : @@names << new_name

    @@names.last
  end

  def generate_random_name
    (0..1).map { (65 + rand(26)).chr }.join + rand(100..999).to_s
  end
end

p Robot.new.name