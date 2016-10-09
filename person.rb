class Person

  attr_reader :name, :sex, :age

  def initialize(name, sex, age, mood)
    @name = name
    @sex = sex
    @age = age
    @mood = mood
  end

  def mood
    @mood.mood()
  end








end