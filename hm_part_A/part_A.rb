class Student

  attr_accessor  :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

def talk()
  return "My name is #{@name} I am in cohort #{@cohort}"
end

def favourite_language(language)
  if language == "Ruby"
    return "I love Ruby"
  else "not true"
  end
end

end
