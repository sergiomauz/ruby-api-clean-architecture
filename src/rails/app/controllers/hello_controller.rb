class HelloController < ApplicationController
  def index
    a = 1
    b = 2
    x = a + b

    # person = Person.new
    # person.name = "Sergio"
    # person.lastname = "Zambrano"
    # person.birth_date = "1988-01-06"
    # person.save

    person = Person.find(1)
    # person.name = "Sergio Mauricio"
    # person.lastname = "Zambrano Jove"
    # person.birth_date = "1984-01-06"
    # person.save

    render json: person
  end
end
