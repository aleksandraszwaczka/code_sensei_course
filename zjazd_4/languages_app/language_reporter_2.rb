require 'pg'

query = "SELECT city.district, SUM(city.population) FROM city
JOIN country ON city.countrycode = country.code
JOIN countrylanguage ON city.countrycode = countrylanguage.countrycode
WHERE countrylanguage.language = 'Polish'
  AND countrylanguage.isofficial = true
GROUP BY city.district
ORDER BY SUM(city.population) DESC;"

conn = PG.connect( dbname: 'ola' )
conn.exec(query) do |result|
  result.each do |row|
    puts row
  end
end
