require('minitest/autorun')
require('minitest/rg')
require_relative('../person')

class TestPerson < MiniTest::Test

  def setup
    @person_1 = Person.new('Max', 'M', 32)
    @person_2 = Person.new('Ana', "F", 29)
    @person_3 = Person.new('Daisy', 'F', 17)
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