require('minitest/autorun')
require('minitest/rg')
require_relative('../part_A')

class TestStudent < MiniTest::Test
  def test_student_name
    student = Student.new("john", "E25")
    assert_equal("john", student.name)
  end

  def test_student_cohort
    student = Student.new("john", "E25")
    assert_equal("E25", student.cohort)
  end

  def test_set_student_name
    student = Student.new("john", "E25")
    student.name = "Marco"
    assert_equal("Marco", student.name)
  end

  def test_set_student_cohort
    student = Student.new("john", "E25")
    student.cohort = "E26"
    assert_equal("E26", student.cohort)
  end

  def test_student_talk
    student = Student.new("john", "E25")
    student.talk
    talk = "My name is john I am in cohort E25"
    assert_equal(talk, student.talk)
  end

def test_student_favourite_language
    student = Student.new("john", "E25")
    student.favourite_language("Ruby")
    phrase = "I love Ruby"
    assert_equal(phrase, student.favourite_language("Ruby"))
end

end
