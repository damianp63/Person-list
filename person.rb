class Person

  attr_accessor :first_name, :last_name

  def initialize(first_name:, last_name:)
    self.first_name = first_name
    self.last_name = last_name
  end

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.load_csv(file)
    people=[]
    CSV.foreach(file,:headers=>true)do |person|
      people<<Person.new(first_name: person[0],last_name: person[1])
    end
    return people
  end

  def self.load_list(people)
    people.map do |person|
      Person.new(first_name:person.first_name,last_name: person.last_name)
    end
  end
end
