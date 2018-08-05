class QueryBuilder
  def initialize(language, official)
    @language = language
    @official = official
  end

  def call
    "SELECT city.district, SUM(city.population) FROM city
    JOIN country ON city.countrycode = country.code
    JOIN countrylanguage ON city.countrycode = countrylanguage.countrycode
    WHERE countrylanguage.language = '#{@language}'
      #{is_official(@official)}
    GROUP BY city.district
    ORDER BY SUM(city.population) DESC;"
  end
private
  def is_official(param)
    if param == 'is_official'
      'AND countrylanguage.isofficial = true'
    elsif param == 'is_not_official'
      'AND countrylanguage.isofficial = false'
    else
      ''
    end
  end
end
