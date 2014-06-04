require 'faker'
I18n.enforce_available_locales = false

class Generator

  def initialize(length)
    @length = length
  end

  def people
    @length.times.map do
      [Faker::Name.first_name, Faker::Name.last_name]
    end
  end

  def companies
    (@length / 2).times.map do
      Faker::Company.name
    end
  end

  def generate
    comp = companies
    i = 0
    people.map do |person|
      with_company = person << comp[(i/2)]
      i += 1
      with_company
    end
  end

end