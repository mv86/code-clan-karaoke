require('minitest/autorun')
require('minitest/rg')
require_relative('../person')
require_relative('../person_behaviours/sing')
require_relative('../person_behaviours/not_singing')
require_relative('../person_behaviours/fight')

class TestPerson < MiniTest::Test

  def setup
    @person_1 = Person.new('Max', 'M', 32, Sing.new)
    @person_2 = Person.new('Ana', "F", 29, Fight.new)
    @person_3 = Person.new('Daisy', 'F', 17, Not_singing.new)
  end

  def test_person_name
    assert_equal('Max', @person_1.name)
  end

  def test_person_sex
    assert_equal('M', @person_1.sex)
  end

  def test_person_age
    assert_equal(29, @person_2.age)
  end




end