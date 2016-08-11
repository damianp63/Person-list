class Person
  def initialize(array: [])
    self.first_name = :array[0]
    self.last_name = :array[1]
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
