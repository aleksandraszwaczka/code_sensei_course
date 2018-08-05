require 'pg'
require 'csv'

def is_official(param)
  if param == 'is_official'
    'AND countrylanguage.isofficial = true'
  elsif param == 'is_not_official'
    'AND countrylanguage.isofficial = false'
  else
    ''
  end
end

query = "SELECT city.district, SUM(city.population) FROM city
JOIN country ON city.countrycode = country.code
JOIN countrylanguage ON city.countrycode = countrylanguage.countrycode
WHERE countrylanguage.language = '#{ARGV[0]}'
  #{is_official(ARGV[1])}
GROUP BY city.district
ORDER BY SUM(city.population) DESC;"

conn = PG.connect( dbname: 'ola' )
conn.exec(query) do |result|
  CSV.open("countries.csv", "wb") do |csv|
    csv << [ "district","number_of_users"] #nagłówek
    result.each do |row|
      csv << [row['district'], row["sum"]] #wyciąga z row stringi i segreguje je według tego co mu każę
    end #ten kod powoduje wywołanie do pliku csv tej metody
  end
end
