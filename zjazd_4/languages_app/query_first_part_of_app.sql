SELECT city.district, SUM(city.population) FROM city
JOIN country ON city.countrycode = country.code
JOIN countrylanguage ON city.countrycode = countrylanguage.countrycode
WHERE countrylanguage.language = 'Polish'
  AND countrylanguage.isofficial = true
GROUP BY city.district
ORDER BY SUM(city.population) DESC;
