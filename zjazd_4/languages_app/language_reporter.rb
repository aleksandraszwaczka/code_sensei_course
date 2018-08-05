require 'pg'

require 'pry'

conn = PG.connect( dbname: 'ola' )
conn.exec( "SELECT * FROM countrylanguage" ) do |result|
  result.each do |row|
    binding.pry
  end
end
