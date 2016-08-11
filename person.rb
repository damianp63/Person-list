class Person
  def initialize(first_name: last_name:)
    self.first_name = :first_name
    self.last_name = :last_name
  end
  def to_s
    "#{first_name} #{last_name}"
  end
  def first_name
    self.first_name
  end
  def last_name
    self.last_name
  end
end
