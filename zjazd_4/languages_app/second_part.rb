require 'pg'
require 'csv'
require './query_builder'


query = QueryBuilder.new(ARGV[0], ARGV[1]).call

conn = PG.connect( dbname: 'ola' )
conn.exec(query) do |result|
  CSV.open("countries.csv", "wb") do |csv|
    csv << [ "district","number_of_users"] #nagłówek
    result.each do |row|
      csv << [row['district'], row["sum"]] #wyciąga z row stringi i segreguje je według tego co mu każę
    end #ten kod powoduje wywołanie do pliku csv tej metody
  end
end
